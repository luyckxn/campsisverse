repos <- "https://packagemanager.posit.co/cran/2026-01-05"
options(repos=repos)

# Install correct version of renv
install.packages("renv")

# Init
renv::init(repos=repos)

# Reassign repos variable

# Install tests by default
options(INSTALL_opts="--install-tests")

# Install and snapshot (lock=TRUE)
renv::install(
  packages=c(
    "Calvagone/campsismod@v1.3.0",
    "Calvagone/campsis@79c96351786171b60c8721ad0a9f2c409c09bf8d",
    "Calvagone/campsisnca@v1.5.2",
    "Calvagone/campsismisc@v0.5.3",
    "Calvagone/campsisqual@v1.4.0",
    "Calvagone/campsistrans@v1.4.1",
    "mrgsolve", # To do check https://github.com/Calvagone/campsis/issues/160
    "rxode2",
    "ncappc",         # Campsisnca testing
    "xgxr",           # e-Campsis (R version)
    "cowplot",        # e-Campsis (R version)
    "ragg",           # High-quality 2D drawing library 
    "plumber",        # e-Campsis desktop
    "arrow"           # e-Campsis desktop
    ),
  rebuild=TRUE,
  repos=repos,
  lock=TRUE)


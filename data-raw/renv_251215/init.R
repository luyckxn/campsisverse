repos <- "https://packagemanager.posit.co/cran/2025-12-15"
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
    "Calvagone/campsismod@develop",
    "Calvagone/campsis@develop",
    "Calvagone/campsisnca@v1.5.1",
    "Calvagone/campsismisc@v0.5.2",
    "Calvagone/campsisqual@v1.4.0",
    "Calvagone/campsistrans@v1.4.0",
    "mrgsolve", # To do check https://github.com/Calvagone/campsis/issues/160
    "rxode2",
    "ncappc",         # Campsisnca testing
    "xgxr",           # e-Campsis (R version)
    "cowplot",        # e-Campsis (R version)
    "ragg",           # High-quality 2D drawing library 
    "plumber"         # e-Campsis desktop
    ),
  rebuild=TRUE,
  repos=repos,
  lock=TRUE)


library(testthat)

context("Test the main script")

testFolder <-  file.path(getwd(), test_path())
source(file.path(testFolder, "testUtils.R"))

test_that("Method 'processVersion' works as expected", {

  expect_equal(processVersion("24-12-01"), "241201")
  expect_equal(processVersion("24.12.01"), "241201")
  
  expect_error(processVersion("24-10-31"), regexp="Version 24-10-31 is not available. Available versions are: 24-12-01")
  expect_error(processVersion("24.10.31"), regexp="Version 24\\.10\\.31 is not available. Available versions are: 24-12-01")
})

test_that("Method 'getCampsisSuitePackages' works as expected", {
  
  expect_equal(getCampsisSuitePackages(), c("campsismod", "campsis", "campsisnca", "campsismisc", "campsistrans", "campsisqual", "mrgsolve", "rxode2"))
  expect_equal(getCampsisSuitePackages(include_engines=FALSE), c("campsismod", "campsis", "campsisnca", "campsismisc", "campsistrans", "campsisqual"))
})

test_that("Test the renv.lock file dated 250209", {
  version <- "250209"
  expect_true(version %in% getAvailableVersions())
  
  # All packages
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 227)
  
  # All but private packages (same now since campsistrans is open source)
  raw <- readLines(getLockFile(version=version, all=FALSE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 227)
  
  # All packages but omit Campsis suite dependencies
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=TRUE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(packages, c("campsis", "campsismisc", "campsismod", "campsisnca", "campsisqual", "campsistrans", "mrgsolve", "rxode2"))
})

test_that("Test the renv.lock file dated 250329", {
  version <- "250329"
  expect_true(version %in% getAvailableVersions())
  
  # All packages
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 228)
  
  # All but private packages (same now since campsistrans is open source)
  raw <- readLines(getLockFile(version=version, all=FALSE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 228)
  
  # All packages but omit Campsis suite dependencies
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=TRUE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(packages, c("campsis", "campsismisc", "campsismod", "campsisnca", "campsisqual", "campsistrans", "mrgsolve", "rxode2"))
})

test_that("Test the renv.lock file dated 250404", {
  version <- "250404"
  expect_true(version %in% getAvailableVersions())
  
  # All packages
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 228)
  
  # All but private packages (same now since campsistrans is open source)
  raw <- readLines(getLockFile(version=version, all=FALSE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 228)
  
  # All packages but omit Campsis suite dependencies
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=TRUE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(packages, c("campsis", "campsismisc", "campsismod", "campsisnca", "campsisqual", "campsistrans", "mrgsolve", "rxode2"))
})

test_that("Test the renv.lock file dated 250711", {
  version <- "250711"
  expect_true(version %in% getAvailableVersions())
  
  # All packages
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 235)
  
  # All but private packages (same now since campsistrans is open source)
  raw <- readLines(getLockFile(version=version, all=FALSE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 235)
  
  # All packages but omit Campsis suite dependencies
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=TRUE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(packages, c("campsis", "campsismisc", "campsismod", "campsisnca", "campsisqual", "campsistrans", "mrgsolve", "rxode2"))
})

test_that("Test the renv.lock file dated 260105", {
  version <- "260105"
  expect_true(version %in% getAvailableVersions())
  
  # All packages
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 238)
  
  # All but private packages (same now since campsistrans is open source)
  raw <- readLines(getLockFile(version=version, all=FALSE, no_deps=FALSE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(length(packages), 238)
  
  # All packages but omit Campsis suite dependencies
  raw <- readLines(getLockFile(version=version, all=TRUE, no_deps=TRUE))
  packages <- campsisverse:::detectPackages(raw)
  expect_equal(packages, c("campsis", "campsismisc", "campsismod", "campsisnca", "campsisqual", "campsistrans", "mrgsolve", "rxode2"))
})

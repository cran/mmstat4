## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo=FALSE--------------------------------------------------------------
suppressPackageStartupMessages(library("mmstat4"))

## ---- eval=FALSE--------------------------------------------------------------
#  ghget(dummy="https://github.com/sigbertklinke/mmstat4.dummy/archive/refs/heads/main.zip")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget('dummy')
#  ghget('hu.stat')
#  ghget('hu.data')
#  ghget()           # uses hu.data

## -----------------------------------------------------------------------------
ghget('dummy')
gd <- ghdecompose(ghlist(full.names=TRUE))
head(gd)

## -----------------------------------------------------------------------------
ghlist("BANK2", full.names=TRUE) # full names
ghlist("BANK2")                  # short names

## ---- eval=4------------------------------------------------------------------
x <- ghload("data/BANK2.sav")          # load data via rio::import
ghopen("univariate/example_ecdf.R")    # open file in RStudio editor
ghsource("univariate/example_ecdf.R")  # execute file via source
ghlist("example_ecdf")                 # "univariate/" was unnecessary

## -----------------------------------------------------------------------------
str(ghlist())     # get all short names
ghlist("\\.pdf$") # get all short names of PDF files

## -----------------------------------------------------------------------------
ghlist("bnk")  # pattern = "bnk
ghquery("bnk") # nearest string matching to "bnk"

## -----------------------------------------------------------------------------
ghfile('data/BANK2.sav')
ghget(local=system.file("zip", "mmstat4.dummy.zip", package="mmstat4"))
fnf <- ghlist(full.names=TRUE)
dfn <- ghdecompose(fnf)
head(dfn)
head(ghpath(dfn))

## -----------------------------------------------------------------------------
ghget(local=system.file("zip", "mmstat4.dummy.zip", package="mmstat4"))
files <- ghlist(pattern="*.R$", full.names = TRUE)
head(Rlibs(files), 30)

## ---- eval=FALSE--------------------------------------------------------------
#  # just check the last files from the list
#  # Note that the R console will show more output (warnings etc.)
#  Rsolo(files, start=435)

## -----------------------------------------------------------------------------
files <- ghlist(full.names = TRUE)
head(Rdups(files))

## -----------------------------------------------------------------------------
ghget(local=system.file("zip", "mmstat4.dummy.zip", package="mmstat4"))
ghnames <- ghdecompose(ghlist(full.names=TRUE))
ghnames[58,]

## ---- error=TRUE--------------------------------------------------------------
x1 <- ghload("BANK2.sav")
x2 <- ghload("dbscan/BANK2.sav")
x3 <- ghload("cluster/dbscan/BANK2.sav")
x4 <- ghload("data/cluster/dbscan/BANK2.sav")
x5 <- ghload("examples/data/cluster/dbscan/BANK2.sav")

## ---- eval=FALSE--------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("sigbertklinke/mmstat4")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("dummy", .force=TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("dummy", .tempdir=FALSE)        # install non-temporarily
#  ghget("dummy", .tempdir="~/mmstat4")  # install non-temporarily to ~/mmstat4
#  ghget("dummy", .tempdir=TRUE)         # install again temporarily
#  

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("dummy", .tempdir=TRUE)
#  ghlist(pattern="/(app|server)\\.R$")
#  ghopen("dbscan") # open the app

## -----------------------------------------------------------------------------
ghget("dummy", .tempdir=TRUE)
ghlist(pattern="\\.csv$", ignore.case=TRUE, full.names=TRUE)
# use mmstat4::ghload for importing
ghlist(pattern="\\.csv$")
pechstein <- ghload("pechstein.csv")
str(pechstein)

## ---- echo=FALSE, message=FALSE, warnings=FALSE, results='asis'---------------
tabl <- "
| Repository       | Size          | ZIP file location |
| :--------------- | :-------------| :--------|
| `dummy`          | 3 MB          | `https://github.com/sigbertklinke/mmstat4.dummy/archive/refs/heads/main.zip`  |
| `hu.stat`        | 29 MB         | `https://github.com/sigbertklinke/mmstat4.data/archive/refs/heads/main.zip`   |
| `hu.data`        | 31 MB         | `https://github.com/sigbertklinke/mmstat4.stat/archive/refs/heads/main.zip`   |
"
cat(tabl) 

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("hu.stat")
#  ghopen("Statistik.pdf")
#  ghopen("Aufgaben.pdf")
#  ghopen("Loesungen.pdf")
#  ghopen("Formelsammlung.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("hu.data")
#  ghopen("dataanalysis.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("hu.data")
#  ghopen("cs1_roenz.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("hu.data")
#  ghopen("cs2_roenz.pdf")

## ---- eval=FALSE--------------------------------------------------------------
#  ghget("hu.data")
#  ghopen("glm_roenz.pdf")


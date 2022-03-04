###
###

.pkgname <- "BSgenome.Cporcellus.UCSC.cavPor3"

.seqnames <- NULL

.circ_seqs <- character(0)

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Cavia porcellus",
        common_name="Guinea pig",
        genome="cavPor3",
        provider="UCSC",
        release_date="Feb. 2008",
        source_url="https://hgdownload.soe.ucsc.edu/goldenPath/cavPor3/bigZips/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Cporcellus"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}


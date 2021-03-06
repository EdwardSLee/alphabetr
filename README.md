alphabetr
---------

`alphabetr` implements the ALPHABETR (algorithm for pairing alpha-beta T cell receptors) algorithms for obtaining TCR sequence pairs. This approach determines CDR3A/CDR3B pairs from high-throughput sequencing data from repeated samples of antigen-specific T cell populations.

With `alphabetr`, you can

-   Determine CDR3A/CDR3B pairs
-   Determine dual TCR-alpha clones and clones that share CDR3A or CDR3B sequences
-   Estimate clonal frequencies

You can install

-   the latest version released on CRAN with

``` r
install.packages("alphabetr")
```

-   the latest development version found on github with

``` r
if (packageVersion("devtools") < 1.6) {
  install.packages("devtools")
}
devtools::install_github("edwardslee/alphabetr")
```

If you encounter any bugs, please file an [issue](https://github.com/edwardslee/alphabetr/issues).

More information
----------------

Please see [our paper in PLOS Computational Biology](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005313) for more details about the algorithm and how it was tested (DOI: 10.1371/journal.pcbi.1005313).

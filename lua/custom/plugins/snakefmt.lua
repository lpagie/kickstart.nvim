return {
  'snakemake/snakefmt',
}

-- au BufNewFile,BufRead Snakefile,*.smk set filetype=snakemake
-- au FileType snakemake autocmd BufWritePre <buffer> execute ':Snakefmt'


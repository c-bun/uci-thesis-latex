#!/bin/bash
latex thesis.tex
for auxfile in chap*.aux
do
    bibtex `basename $auxfile .aux`
done
latex thesis.tex
latex thesis.tex
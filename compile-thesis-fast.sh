#!/bin/bash

BUILDIR=build/
DOC="thesis.tex"

cp Bibliography.bib "$BUILDIR"
cd "$BUILDIR"
bibtex "${DOC/.tex/}"
cd ..
pdflatex -shell-escape -output-directory="$BUILDIR" "$DOC"

#!/bin/bash

BUILDIR=build/
DOC="thesis.tex"

latex2rtf -shell-escape -output-directory="$BUILDIR" "$DOC"
cp Bibliography.bib "$BUILDIR"
cd "$BUILDIR"
bibtex "${DOC/.tex/}"
cd ..
latex2rtf -shell-escape -output-directory="$BUILDIR" "$DOC"

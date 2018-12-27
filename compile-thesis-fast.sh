#!/bin/bash

BUILDIR=build/
DOC="thesis.tex"

pdflatex -shell-escape -output-directory="$BUILDIR" "$DOC"

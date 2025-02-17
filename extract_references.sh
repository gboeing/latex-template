#!/bin/bash
bibexport -o ./latex/references.bib ./latex/main.aux
echo "delete.field = { abstract }" > ./latex/remove_abs.rsc
bibtool -r ./latex/remove_abs.rsc ./latex/references.bib -o ./latex/references.bib
rm -f ./latex/remove_abs.rsc ./latex/*.bib-save-*

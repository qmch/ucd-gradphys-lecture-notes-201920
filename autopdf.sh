#!/bin/bash

echo "Updating local files."
git pull

echo "Beginning PDF-making!"
#TeX the 204A notes and copy them to the PDFs folder
# cd ./fall/204A
# latexmk -pdf 204A-notes-ucd.tex
# latexmk -c
# mv 204A-notes-ucd.pdf ../../pdfs

#same thing for 215A
# cd ../215A
# latexmk -pdf 215A-notes-ucd.tex
# latexmk -c
# mv 215A-notes-ucd.pdf ../../pdfs

#and for 230B
#cd ../230B
#latexmk -pdf 230B-notes-ucd.tex
#latexmk -c
#mv 230B-notes-ucd.pdf ../../pdfs
# cd ../.. #to the main directory

#TeX the 200B notes and copy them to the PDFs folder
cd ./winter/200B
latexmk -pdf 200B-notes-ucd.tex
latexmk -c
mv 200B-notes-ucd.pdf ../../pdfs

#same thing from 204B
cd ../204B
latexmk -pdf 204B-notes-ucd.tex
latexmk -c
mv 204B-notes-ucd.pdf ../../pdfs

#and 215B
cd ../215B
latexmk -pdf 215B-notes-ucd.tex
latexmk -c
mv 215B-notes-ucd.pdf ../../pdfs

echo "PDFs made. Pushing to the remote."
#finally, return to the home directory, git add, and git commit.
cd ../.. #to the main directory
git add . #add all the updated files
git commit -m "PDFs updated! See last commit message(s) for details."
git push
echo "autopdf complete."

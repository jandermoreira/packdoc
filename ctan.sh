# Creates a CTAN zip file
# Jander Moreira (moreira.jander@gmail.com)
# 2025

mkdir -p docs
files="
  license
  README.md
  docs.sty
  docs-doc.tex
  docs-change-history-example.tex
  out/docs-doc.pdf
  DEPENDS.txt
"
cp -v $files docs
[ -f docs.zip ] && rm docs.zip
zip -r docs.zip docs
rm -r ./docs
all: main.pdf

main.pdf: main.tex sample.bib Figure1.pdf Figure2.pdf
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex 

Figure2.pdf: pics/methods.svg
	inkscape -D -A $@ $<

Figure1.pdf: pics/classes.svg
	inkscape -D -A $@ $<

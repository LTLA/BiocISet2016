all: main.pdf

main.pdf: main.tex sample.bib methods.pdf classes.pdf
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex 

methods.pdf: pics/methods.svg
	inkscape -D -A $@ $<

classes.pdf: pics/classes.svg
	inkscape -D -A $@ $<

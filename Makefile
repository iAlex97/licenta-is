.PHONY: document bibliography


document:
	pdflatex main.tex

bibliography:
	biber main

all: | bibliography document

run:
	open main.pdf

clean:
	rm *.aux *.toc *.pdf *.log *.bbl *.bcf *.blg
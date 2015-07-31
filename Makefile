all: *.tex *.bib Makefile
	pdflatex thesis
	bibtex thesis
	pdflatex -interaction=batchmode thesis
	pdflatex -interaction=batchmode thesis

clean:
	rm -f *~ *.bak *.aux *.log *.toc *.blg *.bbl *.dvi *.ps

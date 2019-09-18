all: mi-notes.pdf clean

mi-notes.pdf: mi-notes.tex input/*.tex
	lualatex $^

clean:
	rm -f *.synctex.gz *.log *.aux *.auxlock *.out *.toc *.bbl *.blg *.loe

TC = tectonic

all: mm-notes.pdf clean

figure_svgs = $(abspath $(wildcard figures/*.svg))
figure_pdfs = $(figure_svgs:.svg=.pdf)

mm-notes.pdf: mm-notes.tex $(wildcard input/*.tex) $(figure_pdfs) mm-notes.bib
	tectonic $<

clean:
	rm -f *.synctex.gz *.log *.aux *.auxlock *.out *.toc *.bbl *.blg *.loe *.brf

$(figure_pdfs): %.pdf: %.svg
	inkscape -D -z --file=$< --export-pdf=$@ --export-latex

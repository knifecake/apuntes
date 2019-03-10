all: resumen-anamat.pdf resumen-anamat.html

resumen-anamat.pdf: resumen-anamat.md
	pandoc --template ../templates/two-column.tex -o $@ $^

resumen-anamat.html: resumen-anamat.md
	pandoc --mathjax -o $@ $^

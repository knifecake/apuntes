all: resumen-ia.pdf resumen-ia.html

resumen-ia.pdf: resumen-ia.md
	pandoc --pdf-engine=xelatex --template ../templates/one-column.tex -o $@ $^

resumen-ia.html: resumen-ia.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

all: resumen-edo.pdf resumen-edo.html

resumen-edo.pdf: resumen-edo.md
	pandoc --template ../templates/one-column.tex -o $@ $^

resumen-edo.html: resumen-edo.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

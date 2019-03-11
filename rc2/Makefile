all: resumen-rc2.pdf resumen-rc2.html

resumen-rc2.pdf: resumen-rc2.md
	pandoc -o $@ $^

resumen-rc2.html: resumen-rc2.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

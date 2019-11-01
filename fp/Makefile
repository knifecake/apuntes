all: fp-summary.pdf fp-summary.html

fp-summary.pdf: fp-summary.md
	pandoc --pdf-engine=xelatex --template ../templates/one-column.tex -o $@ $^

fp-summary.html: fp-summary.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

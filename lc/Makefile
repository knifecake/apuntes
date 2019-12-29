all: lc-summary.pdf lc-summary.html

lc-summary.pdf: lc-summary.md
	pandoc --pdf-engine=xelatex --template ../templates/one-column.tex -o $@ $^

lc-summary.html: lc-summary.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

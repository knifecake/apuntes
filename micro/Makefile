all: recordatorios_para_examenes.pdf recordatorios_para_examenes.html

recordatorios_para_examenes.pdf: recordatorios_para_examenes.md
	pandoc --template ../templates/one-column.tex -o $@ $^

recordatorios_para_examenes.html: recordatorios_para_examenes.md
	pandoc --mathjax -o $@ $^
	cat frontmatter.txt $@ > $@.tmp
	mv $@.tmp $@

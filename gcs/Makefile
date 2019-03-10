all: resumen-gcs.pdf resumen-gcs.html

resumen-gcs.pdf: resumen-gcs.md
	pandoc --template ../templates/two-column.tex -o $@ $^

resumen-gcs.html: resumen-gcs.md
	pandoc --mathjax -o $@ $^

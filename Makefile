all: basic-info.pdf

.PHONY: all

basic-info.pdf: basic-info.tex
	pdflatex $^

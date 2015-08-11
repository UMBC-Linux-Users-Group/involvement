all: basic-info.pdf

.PHONY: all git-describe

basic-info.pdf: basic-info.tex git-describe.tex
	pdflatex $^

git-describe.tex:
	git describe --always --dirty=+ > git-describe.tex

all: basic-info.pdf

.PHONY: all git-describe clean

basic-info.pdf: basic-info.tex git-describe.tex
	pdflatex --halt-on-error $^

git-describe.tex:
	git describe --always --dirty=+ > git-describe.tex

clean:
	-rm *.pdf *.log *.aux git-describe.tex

all: basic-info.pdf mailing-signup.pdf

.PHONY: all git-describe clean

basic-info.pdf: basic-info.tex git-describe.tex mailing-signup-qr.png
	pdflatex --halt-on-error $^

mailing-signup.pdf: mailing-signup.tex git-describe.tex
	pdflatex --halt-on-error $^

mailing-signup-qr.png: mailing-signup-qr.txt
	qrencode -o $@ < $<

git-describe.tex:
	git describe --always --dirty=+ > git-describe.tex

clean:
	-rm *.pdf *.log *.aux git-describe.tex

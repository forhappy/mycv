all:my-CV-2013.pdf
my-CV-2013.pdf:my-CV-2013.tex
	pdflatex $^
	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux
	evince $@

.PHONY:clean view

clean:
	rm *.log *.aux *.out my-CV-2013.pdf

view:
	evince my-CV-2013.pdf

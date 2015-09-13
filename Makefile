all: coverLetter.pdf

pdf: coverLetter.pdf

coverLetter.pdf: clean coverLetter.tex
	pdflatex coverLetter.tex
	makeindex coverLetter.tex
	pdflatex coverLetter.tex

clean:
	rm -f *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl coverLetter.pdf

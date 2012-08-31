poster.pdf : poster.tex
	@echo "compile poster"
	@latex poster.tex
#	@bibtex poster
	@latex poster.tex
	@latex poster.tex
	@echo "export in pdf"
	@dvipdf poster.dvi poster.pdf
	@echo "delete compilation files"
	@rm -f *.aux *.bbl *.blg *.dvi *.log
#	@mv poster.pdf poster_JC2.pdf 

poster2.pdf : poster2.tex
	@echo "compile poster"
	@latex poster2.tex
	@bibtex poster2
	@latex poster2.tex
	@latex poster2.tex
	@echo "export in pdf"
	@dvipdf poster2.dvi poster2.pdf
	@echo "delete compilation files"
	@rm -f *.aux *.bbl *.blg *.dvi *.log
	@mv poster2.pdf poster_JC2.pdf 

clean : 
	@echo "delete non-tex files"
	@rm -f *.aux *.bbl *.blg *.dvi *.log Poster_RD_GMMC_2010.pdf

tild :
	@echo "delete ~ files"
	@ rm *~

OSTST : poster_OSTST2012.tex
	@echo "compile poster"
	@latex poster_OSTST2012.tex
	@bibtex poster_OSTST2012
	@latex poster_OSTST2012.tex
	@latex poster_OSTST2012.tex
	@echo "export in pdf"
	@dvipdf poster_OSTST2012.dvi OSTST2012.pdf
	@echo "delete compilation files"
	@rm -f *.aux *.bbl *.blg  #*.dvi *.log
#	@mv poster.pdf poster_JC2.pdf 

JC2 : Gaultier_JC2.tex
	@echo "compile poster"
	@latex Gaultier_JC2.tex
	@bibtex Gaultier_JC2
	@latex Gaultier_JC2.tex
	@latex Gaultier_JC2.tex
	@echo "export in pdf"
	@dvipdf Gaultier_JC2.dvi Gaultier_JC2.pdf
	@echo "delete compilation files"
	@rm -f *.aux *.bbl *.blg  #*.dvi *.log
#	@mv poster.pdf poster_JC2.pdf 

sama : Gaultier_sama.tex
	@echo "compile poster"
	@latex Gaultier_sama.tex
	@bibtex Gaultier_sama
	@latex Gaultier_sama.tex
	@latex Gaultier_sama.tex
	@echo "export in pdf"
	@dvipdf Gaultier_sama.dvi Gaultier_sama.pdf
	@echo "delete compilation files"
	@rm -f *.aux *.bbl *.blg  #*.dvi *.log
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

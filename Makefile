basename = main
TEXT = $(basename).tex
LATEXBIN = pdflatex

all: $(pdfname).pdf

$(pdfname).pdf: $(TEXT) 
	latexmk -pvc -f -pdf -pdflatex="xelatex -interactive=nonstopmode" -use-make $(basename).tex

clean:
	latexmk -CA



CHEATSHEETS_TEX := $(wildcard src/*.tex)
CHEATSHEETS_PDF := $(patsubst %.tex,%.pdf,${CHEATSHEETS_TEX})

.PHONY : build clean

build : ${CHEATSHEETS_PDF}

src/%.pdf : src/%.tex
	cd src && pdflatex $(notdir $^)

clean :
	rm -f src/*.pdf src/*.log src/*.aux

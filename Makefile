.PHONY : build clean

build : src/vim.pdf

src/vim.pdf : src/vim.tex
	-pdflatex src/vim.tex

clean :
	-rm src/vim.pdf src/vim.log src/vim.aux

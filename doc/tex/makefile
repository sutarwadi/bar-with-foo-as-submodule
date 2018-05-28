DOCTITLE=book

IMGDIR=img

ifndef VERBOSE
.SILENT:
endif

.PHONY: img

all:	lua

verbose:	luaverb

lua:	img ${DOCTITLE}.tex clean
			echo "Compiling TeX Document using LuaLaTeX..."
			latexmk -lualatex -interaction=nonstopmode \
							-logfilewarnings- -quiet \
							-outdir=build-lua \
							${DOCTITLE}.tex > /dev/null 2> /dev/null
			echo "Cleaning up Files..."
			latexmk -lualatex -interaction=nonstopmode \
							-logfilewarnings- -quiet \
							-c -outdir=build-lua \
							${DOCTITLE}.tex > /dev/null 2> /dev/null
			cp build-lua/${DOCTITLE}.pdf ${DOCTITLE}.pdf
			echo "PDF File Generated..."

luaverb:	img ${DOCTITLE}.tex clean
					echo "Compiling TeX Document using LuaLaTeX..."
					latexmk -lualatex -interaction=nonstopmode \
									-outdir=build-lua \
									${DOCTITLE}.tex
					echo "Cleaning up Files..."
					latexmk -lualatex -interaction=nonstopmode \
									-c -outdir=build-lua \
									${DOCTITLE}.tex
					cp build-lua/${DOCTITLE}.pdf ${DOCTITLE}.pdf
					echo "PDF File Generated..."

pdf:	img ${DOCTITLE}.tex clean
			unlink config.tex
			unlink tadoba.sty
			ln -s config-pdf.tex config.tex
			ln -s tadoba-pdf.sty tadoba.sty
			echo "Compiling TeX Document using PDFLaTeX..."
			latexmk -pdf -interaction=nonstopmode \
							-logfilewarnings- -quiet \
							-outdir=build-pdf \
							${DOCTITLE}.tex > /dev/null 2> /dev/null
			echo "Cleaning up Files..."
			latexmk -pdf -interaction=nonstopmode \
							-logfilewarnings- -quiet \
							-c -outdir=build-pdf \
							${DOCTITLE}.tex > /dev/null 2> /dev/null
			cp build-pdf/${DOCTITLE}.pdf ${DOCTITLE}-pdf.pdf
			unlink config.tex
			unlink tadoba.sty
			ln -s config-lua.tex config.tex
			ln -s tadoba-lua.sty tadoba.sty
			echo "PDF File Generated..."

pdfverb:	img ${DOCTITLE}.tex clean
					unlink config.tex
					unlink tadoba.sty
					ln -s config-pdf.tex config.tex
					ln -s tadoba-pdf.sty tadoba.sty
					echo "Compiling TeX Document using PDFLaTeX..."
					latexmk -pdf -interaction=nonstopmode \
									-outdir=build-pdf \
									${DOCTITLE}.tex
					echo "Cleaning up Files..."
					latexmk -pdf -interaction=nonstopmode \
									-c -outdir=build-pdf \
									${DOCTITLE}.tex
					cp build-pdf/${DOCTITLE}.pdf ${DOCTITLE}-pdf.pdf
					unlink config.tex
					unlink tadoba.sty
					ln -s config-lua.tex config.tex
					ln -s tadoba-lua.sty tadoba.sty
					echo "PDF File Generated..."

img:
	make -C $(IMGDIR)

clean:
			./clean.sh

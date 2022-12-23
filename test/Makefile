FILE_NAME = main
TEX_FILE = ${FILE_NAME}.tex
PDF_FILE = ${FILE_NAME}.pdf

.PHONY: view clean latexmk textlint

all: clean ${PDF_FILE}

view: ${PDF_FILE}
	evince ${PDF_FILE} > /dev/null 2>&1 &

${PDF_FILE}:
	platex ${FILE_NAME}
	#pbibtex ${FILE_NAME}
	platex ${FILE_NAME}
	ptex2pdf -l ${FILE_NAME}
	rm -f ${FILE_NAME}.lot ${FILE_NAME}.toc ${FILE_NAME}.lof \
	${FILE_NAME}.log ${FILE_NAME}.blg ${FILE_NAME}.bbl \
	${FILE_NAME}.aux ${FILE_NAME}.out abst.ps

latexmk:
	latexmk ${FILE_NAME} -pvc

clean:
	rm -f *~ *.aux *.out *.log *.toc *.pdf *.dvi *.bbl *.lof *.lot *.blg *.fdb_latexmk *.fls *.synctex.gz

textlint:
	cp base.tex main.tex
	textlint --fix main.tex
	diff base.tex main.tex
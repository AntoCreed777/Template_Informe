PDF=informe.pdf
OUTDIR=aux
MAIN=main.tex

.PHONY: all clean open

all:
	latexmk -pdf -jobname=$(basename $(PDF)) -outdir=$(OUTDIR) $(MAIN)

clean:
	latexmk -C -outdir=$(OUTDIR)
	@echo "Archivos auxiliares eliminados de $(OUTDIR)"

open:
	xdg-open $(OUTDIR)/$(PDF)

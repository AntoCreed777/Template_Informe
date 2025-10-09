PDF=informe.pdf
OUTDIR=aux
MAIN=main.tex

.PHONY: all log clean open

all:
	latexmk -pdf -jobname=$(basename $(PDF)) -outdir=$(OUTDIR) $(MAIN)

log:
	@grep "Warning" ./aux/informe.log || true
	@grep "Error" ./aux/informe.log || true

clean:
	latexmk -C -outdir=$(OUTDIR)
	@echo "Archivos auxiliares eliminados de $(OUTDIR)"

open:
	xdg-open $(OUTDIR)/$(PDF)

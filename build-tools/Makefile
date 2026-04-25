PROJECT_ROOT := ..
SRC_DIR := src
PDF_NAME := informe.pdf
OUTDIR := build
SOURCE_MAIN := main.tex

# Variables derivadas
JOB_NAME := $(basename $(PDF_NAME))
LOG_FILE := $(PROJECT_ROOT)/$(OUTDIR)/$(JOB_NAME).log
CHECK_SCRIPT := ./check_linux_requirements.sh

.DEFAULT_GOAL := all

.PHONY: check prepare-outdir all log clean open

check:
	@bash $(CHECK_SCRIPT)

prepare-outdir:
	@cd $(PROJECT_ROOT) && mkdir -p $(OUTDIR)
	@cd $(PROJECT_ROOT)/$(SRC_DIR) && grep -Eo '\\include\{[^}]+\}' $(SOURCE_MAIN) \
		| sed -E 's/\\include\{([^}]*)\}/\1/' \
		| awk -F/ 'NF>1{NF=NF-1; print $$0}' OFS=/ \
		| sort -u \
		| while read -r dir; do mkdir -p "../$(OUTDIR)/$$dir"; done

all: check prepare-outdir
	@cd $(PROJECT_ROOT)/$(SRC_DIR) && latexmk -pdf -jobname=$(JOB_NAME) -outdir=../$(OUTDIR) $(SOURCE_MAIN)

log:
	@grep -E "Warning|Error" $(LOG_FILE) || true

clean:
	@rm -rf $(PROJECT_ROOT)/$(OUTDIR)

open:
	@xdg-open $(PROJECT_ROOT)/$(OUTDIR)/$(PDF_NAME)

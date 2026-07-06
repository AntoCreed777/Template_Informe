PROJECT_ROOT := ..
TEMPLATE ?= informe
SRC_DIR := $(TEMPLATE)
PDF_NAME ?= $(TEMPLATE).pdf
OUTDIR := build
SOURCE_MAIN := main.tex

# Variables derivadas
JOB_NAME := $(basename $(PDF_NAME))
LOG_FILE := $(PROJECT_ROOT)/$(OUTDIR)/$(JOB_NAME).log
CHECK_SCRIPT := ./check_linux_requirements.sh

.DEFAULT_GOAL := all

.PHONY: check validate-template prepare-outdir all log clean open

check:
	@bash $(CHECK_SCRIPT)

validate-template:
	@if [ ! -d "$(PROJECT_ROOT)/$(SRC_DIR)" ]; then \
		echo "Error: el template '$(TEMPLATE)' no existe en $(PROJECT_ROOT)."; \
		echo "Templates disponibles: informe, paper"; \
		exit 1; \
	fi

prepare-outdir:
	@cd $(PROJECT_ROOT) && mkdir -p $(OUTDIR)
	@cd $(PROJECT_ROOT)/$(SRC_DIR) && grep -Eo '\\(include|input)\{[^}]+\}' $(SOURCE_MAIN) \
		| sed -E 's/\\(include|input)\{([^}]*)\}/\2/' \
		| awk -F/ 'NF>1{NF=NF-1; print $$0}' OFS=/ \
		| sort -u \
		| while read -r dir; do mkdir -p "../$(OUTDIR)/$$dir"; done

all: check validate-template prepare-outdir
	@cd $(PROJECT_ROOT)/$(SRC_DIR) && latexmk -pdf -jobname=$(JOB_NAME) -outdir=../$(OUTDIR) $(SOURCE_MAIN)

log:
	@grep -E "Warning|Error" $(LOG_FILE) || true

clean:
	@rm -rf $(PROJECT_ROOT)/$(OUTDIR)

open:
	@xdg-open $(PROJECT_ROOT)/$(OUTDIR)/$(PDF_NAME)

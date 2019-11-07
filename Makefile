.PHONY: .FORCE
GO=go

SRC_DIR = ./src

NEW_GOPATH := $(GOPATH):$(shell pwd)
export GOPATH := $(NEW_GOPATH)


all:
	@echo "GOPATH="$(GOPATH)
	$(GO) build -o bin/excel2txt tools/excel2txt
	$(GO) build -o bin/classify tools/classify


fmt:
	$(GO) fmt $(SRC_DIR)/...


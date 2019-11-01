.PHONY: .FORCE
GO=go

SRC_DIR = ./src

NEW_GOPATH := $(GOPATH):$(shell pwd)
export GOPATH := $(NEW_GOPATH)


all:
	@echo "GOPATH="$(GOPATH)
	$(GO) build -o bin/excel_tool services/tool


fmt:
	$(GO) fmt $(SRC_DIR)/...


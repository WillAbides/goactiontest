GOCMD=go
GOBUILD=$(GOCMD) build
PATH := "${CURDIR}/bin:$(PATH)"

.PHONY: gobuildcache

bin/golangci-lint:
	script/bindown install $(notdir $@)

bin/shellcheck:
	script/bindown install $(notdir $@)

bin/gobin:
	script/bindown install $(notdir $@)

GOACTION_REF := master
bin/goaction: bin/gobin
	GOBIN=${CURDIR}/bin \
	bin/gobin github.com/posener/goaction/cmd/goaction@$(GOACTION_REF)

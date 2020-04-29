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

GOACTION_REF := 0f1a0a14a62369454ce17eced74a235091015cc7
bin/goaction: bin/gobin
	GOBIN=${CURDIR}/bin \
	bin/gobin github.com/posener/goaction/cmd/goaction@$(GOACTION_REF)

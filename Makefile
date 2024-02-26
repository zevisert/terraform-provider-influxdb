default: testacc

# Run acceptance tests
.PHONY: testacc
testacc:
	TF_ACC=1 go test ./... -v $(TESTARGS) -timeout 120m

.PHONY: golint
golint:
	golangci-lint run

.PHONY: docs
docs:
	go install github.com/hashicorp/terraform-plugin-docs/cmd/tfplugindocs
	tfplugindocs generate

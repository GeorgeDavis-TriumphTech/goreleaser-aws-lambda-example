.PHONY: all
.PHONY: clean
.PHONY: test

export

test:
	$(eval export GITHUB_TOKEN=)
	@true

init:
	goreleaser init

# Lint on all dependencies and sub-dependencies
lint:
	go fmt ./...

# Check for updates on all dependencies and sub-dependencies
update:
	go list -m -u all  

# Run Go analyzers in the current and all sub-directories
check:
	go vet ./... && \
	make staticcheck

# Prune unused dependencies include dependencies for all possible OS and system architectures 
# Verify hash checks
dep-check:
	go mod tidy && \
	go mod verify

staticcheck: 
	go install honnef.co/go/tools/cmd/staticcheck@latest && \
	staticcheck ./...

build:
	make lint && \
	make update && \
	make check && \
	make dep-check && \
	goreleaser build --clean --debug

# Validate GoReleaser YAML template
validate: 
	goreleaser check

# Preview your changelog
changelog: 
	goreleaser changelog

# Checks if needed tools are installed
health:
	goreleaser healthcheck

# Publishes a previously prepared release
publish:
	goreleaser publish

# Releases the current project
release:
	goreleaser release
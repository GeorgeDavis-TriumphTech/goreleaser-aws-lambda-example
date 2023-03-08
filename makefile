export

test:
	$(eval export GITHUB_TOKEN=)
	@true

init:
	goreleaser init

build:
	goreleaser build \
		--clean \
		--debug

check: 
	goreleaser check

changelog: 
	goreleaser changelog

health:
	goreleaser healthcheck
		
publish:
	goreleaser publish

release:
	goreleaser release
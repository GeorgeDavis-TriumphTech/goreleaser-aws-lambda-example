# goreleaser-aws-lambda-example

This is a example project of how GoReleaser can be used to build and release Golang application to AWS Lambda.

There are two files that are critical to setting up this example.

- [.goreleaser.yaml](/GeorgeDavis-TriumphTech/goreleaser-aws-lambda-example/blob/main/.github/workflows/lambda-deploy.yml)
- [.github/workflows/lambda-deploy.yml](/GeorgeDavis-TriumphTech/goreleaser-aws-lambda-example/blob/main/.github/workflows/lambda-deploy.yml)


### How it works

`.github/workflows/lambda-deploy.yml` - This workflow file helps to setup the Go build environment on GitHub runners and pass the execution to GoReleaser for build and release to GitHub.

`.goreleaser.yaml` - This GoReleaser configuration file takes care of automating the build and release process laid out by the GoReleaser configuration template syntax. Please refer to [https://goreleaser.com/customization](https://goreleaser.com/customization) for more information.


### Documentation

A lot of documentation of how this project is set up, is provided as inline comments on the project files.


### Credits

- Brian Morrison II, for [Your First AWS Lambda Function in Go](https://brianmorrison.me/blog/your-first-aws-lambda-function-in-go/)
- Alex Edwards, for [An Overview of Go's Tooling](https://www.alexedwards.net/blog/an-overview-of-go-tooling)

Both of these articles help make this quick project to highlight the usecase of GoReleaser as a release automation tool.

Thank you!
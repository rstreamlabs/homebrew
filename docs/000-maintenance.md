# Maintain the Homebrew formula

This tap distributes a prebuilt Go CLI. It does not compile the CLI or provide a
JavaScript SDK. `Formula/rstream.rb` selects macOS or Linux and Intel or ARM
archives, each with its own checksum. Update the version, artifact identifiers
and SHA-256 values together from the reviewed native release.

From a source checkout, Ruby syntax is a local first check:

```sh
ruby -c Formula/rstream.rb
```

With Homebrew available, run its formula checks and test the installed candidate:

```sh
brew style Formula/rstream.rb
brew test rstreamlabs/rstream/rstream
```

The formula test invokes `rstream --version` and checks the expected version.
It applies to the installed formula, so ensure that it is the candidate being
reviewed. Syntax or style checks do not download and qualify the release archives.
An installation or upgrade consumes the selected hosted archive and may change
the installed CLI; keep that separate from a source-only review.

The formula contains no rstream credentials. CLI authentication and a first
tunnel follow the [CLI workflow](https://rstream.io/docs/getting-started/cli-workflow).

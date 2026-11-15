# rstream Homebrew tap

The rstream CLI forwards services, shares files and opens remote terminals through outbound connections, without requiring inbound access to the remote host. This Homebrew tap installs the CLI on macOS or Linux. Its formula selects the native binary and verifies the archive checksum. The CLI itself is maintained in the [Go SDK repository](https://github.com/rstreamlabs/rstream-go).

```sh
brew tap rstreamlabs/rstream
brew install rstreamlabs/rstream/rstream
rstream --version
```

Follow the [CLI workflow](https://rstream.io/docs/getting-started/cli-workflow) to authenticate, select a project and forward a service. The [installation guide](https://rstream.io/docs/getting-started/installation) covers other distribution methods.

## Maintain the formula

[`Formula/rstream.rb`](Formula/rstream.rb) contains the platform URLs and checksums. Release automation updates them together; a manual correction must keep the binary version, architecture and checksum consistent. [Maintenance](docs/000-maintenance.md) separates local Ruby checks from Homebrew style, installation and the formula’s version test.

For CLI bugs, use [rstream-go issues](https://github.com/rstreamlabs/rstream-go/issues). Report vulnerabilities through the [rstream security policy](https://github.com/rstreamlabs/.github/blob/main/SECURITY.md).

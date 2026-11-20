# Maintain the Homebrew formula

The formula maps a stable CLI release to four native archives. When updating
it, use the version and SHA-256 from each reviewed published artifact. Keep
macOS Intel, macOS Apple silicon, Linux x86-64 and Linux arm64 entries distinct.

## Verify a candidate

| Check | What it establishes |
| --- | --- |
| `ruby -c Formula/rstream.rb` | The formula parses as Ruby. |
| `brew style Formula/rstream.rb` | The source follows Homebrew formula conventions. |
| Download and hash each selected archive | Each advertised URL serves the bytes declared for that platform. |
| Install and run `brew test rstreamlabs/rstream/rstream` | Homebrew can stage the selected archive and the installed binary reports the expected version. |

Run the syntax and style commands from the checkout. Perform installation
and upgrade checks in a disposable environment with the candidate formula
loaded, then run the version test there. If you are checking archive bytes
separately, compare the complete downloaded file with the `sha256` in
[`Formula/rstream.rb`](../Formula/rstream.rb) and check that it contains the
native `bin/rstream` executable for the expected platform.

The [Go SDK and CLI repository](https://github.com/rstreamlabs/rstream-go)
builds and publishes the CLI binary. The tap supplies the installation
metadata. The [tap trust guide](https://docs.brew.sh/Tap-Trust) describes
Homebrew’s formula-level approval.

# rstream Homebrew tap

Install the rstream CLI on macOS or Linux. The CLI connects outbound from your
machine so you can forward services, share files or open remote terminals
through rstream. This tap installs the published native binary and verifies
its archive checksum.

## Install

With [Homebrew](https://brew.sh/) available, run these commands from your shell.

```sh
brew install rstreamlabs/rstream/rstream
rstream --version
```

The fully qualified name adds the tap when needed and lets Homebrew trust the
CLI formula individually. The version command confirms which CLI your shell
can run. Follow the [CLI workflow](https://rstream.io/docs/getting-started/cli-workflow)
to authenticate, select a project and forward a service.

## Update or remove the CLI

| Task | Command |
| --- | --- |
| Refresh the tap and install an available upgrade | `brew update`, then `brew upgrade rstreamlabs/rstream/rstream` |
| See the version managed by Homebrew | `brew list --versions rstreamlabs/rstream/rstream` |
| Reinstall the current formula | `brew reinstall rstreamlabs/rstream/rstream` |
| Remove the Homebrew installation | `brew uninstall rstreamlabs/rstream/rstream` |
| Remove the tap after uninstalling its packages | `brew untap rstreamlabs/rstream` |

If Homebrew reports an untrusted formula during an upgrade, run
`brew trust --formula rstreamlabs/rstream/rstream` and retry. If Homebrew
and `rstream --version` disagree, use `command -v rstream` to find the
copy your shell selected. This can happen after installing through another
package manager.

## Maintenance and support

[Formula maintenance](docs/000-maintenance.md) covers archive checks and local
validation. The [Go SDK and CLI repository](https://github.com/rstreamlabs/rstream-go)
owns CLI development and issues. Report vulnerabilities privately through the
[rstream security policy](https://github.com/rstreamlabs/.github/blob/main/SECURITY.md).

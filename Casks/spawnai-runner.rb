cask "spawnai-runner" do
  name "spawnai-runner"
  desc "TODO"
  homepage "https://spawnai.dev"
  version "1.0.1"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839c445bd339d43881ff42b/download",
        sha256: "bfd050a46badd6a0c979f3242c841e23716f6721e3c02f6c29d7ca15a19bbf71",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c444008a72be4945bd7a/download",
        sha256: "9549f8bfefed5b1034ce138d77b3856c6b98f64ae251269181386d3b37088093",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839c4468fb4e073e6351acf/download",
        sha256: "8d6ca439a295ad26b6a843627b44b76d77cf0c7940526a3ed9841857557b6885",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c447bda48d61d2f4a776/download",
        sha256: "e9b066b0a43d805cbb2da2b1d7084566c7e09277b1d48e351e4534f3a1246ad3",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

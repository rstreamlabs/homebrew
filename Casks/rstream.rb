cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.3.2"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698cfd2869ce014846216448/download",
        sha256: "7fbb5e5dad8e3d2e2f469dd3700e2d441578456ece0052da2679254c3cf8ffa3",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698cfd2aecf3672c1b37415e/download",
        sha256: "ca5b858ec4444c1ad2292c31c47f8f0d9a819f19a0bb9d42b789760327932053",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698cfd2b908e39ff16c3fdee/download",
        sha256: "ac5c27be4139f4f3cd3ada22293fad3171b475a0741b3cc4f9deedb8a88b0311",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698cfd2d908e39ff16c3fdf5/download",
        sha256: "4904e1d6373c6fce5be005160b4c0bd878cc4bb6286b703dcb15f8635e607958",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

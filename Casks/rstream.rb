cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.0.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/68373c816de4c329818111d9/download",
        sha256: "193d74737bdcb4240159469647e6b2ae8b38a5a0f3f71071d89ace14d3700b47",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/68373c835d2128a1beb54eec/download",
        sha256: "101410afba21d3824215128a373bd0190b0f2c714c1d90e688e2176b49964124",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/68373c836de4c329818111e3/download",
        sha256: "a9ce8d6c20be053ee1c328abb00a8f647b6e59585c63bfaa6d2381ec12d16ca7",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/68373c846de4c329818111e7/download",
        sha256: "e800f73f9fb2458e2d1932b8c00a34c4265143f8bc9fa5f717d77aad7e7e78d9",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

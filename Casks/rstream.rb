cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.1.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839cdc4f3cac8e9ffbd8939/download",
        sha256: "c3de80c01c8f189e29a4af3f419b2e667d708dc9fc26a0e3b67900129f663f36",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839cdc4be6d749048f8d0ab/download",
        sha256: "c408471061421171d90ec49aa7f0f0b2743e0b36f3d06b11e8b0561c1d87ef62",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839cdc50a1892b7c711d09f/download",
        sha256: "7eb870aa42b12c71efe4961879f10143f6ad20de87d8b5fcd0f6fa9fa0415a2c",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839cdc89f22470e768db29e/download",
        sha256: "560fc705327801816c5d554d410a566325a9fb252f9daba52b1780ae4fd4e17a",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

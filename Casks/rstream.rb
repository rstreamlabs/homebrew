cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.5.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6991f26f5036901141babb77/download",
        sha256: "ac757fcf7ae3647ee9ec8653f5e67b923b899df342217bf60ada727ea314f750",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6991f2702094f5d6b0496cde/download",
        sha256: "f06d04ca208f24f9f963fc9f13959635d334e66f8bb40d88c6240b9c2e41bfec",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/699223b1d59883807a437244/download",
        sha256: "24804580cd17b40888b19d41a58505dfbddf86b55512bed06ed15e3ec4a2ef6a",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/699223b2a259d1294f8cc700/download",
        sha256: "24844a5d05fc876f9deab4c818aba0ae26a173beac679812cec29c88e5cbc93b",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

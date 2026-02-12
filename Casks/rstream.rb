cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.4.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698db20acfc925c6f4d1b357/download",
        sha256: "04897701845923e53dd416ed32e1adb85e8b8c6f725beeb8420020e15c2c4f6a",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698db20ce35645d9cefd96ba/download",
        sha256: "5ce11d94d91105c4c1ef827578560f0e1ed13a85b15c553dbd23b331f889ea2d",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698db2103d7cd56114288247/download",
        sha256: "6eabb3dceeab8c031828d56a5148b975ac621d0007a1049cc953cca61747b610",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698db214b948ad523faa02a2/download",
        sha256: "c9475e6b5d8ef5437ff09edd19540c17a8daf789d19db98578a31e9525a640e3",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

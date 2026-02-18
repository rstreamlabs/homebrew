cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.5.1"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6995984331e727880f2a29bc/download",
        sha256: "8b0aab0aaa369b7afcef18d258d9bac90f3831a757f865a1e0be11567e280f23",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/69959843b00fca1342b57182/download",
        sha256: "e67d30500f3d0e0a3a3e0b16e9c974e6d3b502d668441fd09f39c470809918af",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/69959849b17e883e278433bc/download",
        sha256: "646c2f69722552d9e736ba8baf549d0c259393dcb25a2a8567e6965608fde964",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6995984e8a71dd3971b8d566/download",
        sha256: "51e939dfa0160d3f5464d7a431f00ed2189948e0a11df342fa85121b763fdd66",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

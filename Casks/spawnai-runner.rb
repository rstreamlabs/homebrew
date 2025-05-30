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
        sha256: "337466c0294d36f0fd3b2d791081377503deb73172ec943f85b2df3a986f8c9b",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c444008a72be4945bd7a/download",
        sha256: "997712aac48f8590d0caa04c602e97da7b96ca14ebb009347a9dc79f02071535",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839c4468fb4e073e6351acf/download",
        sha256: "a8d58a76762ce6043047f826425f206d0ee3fce1514c4fd08dc802a6c32354d1",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c447bda48d61d2f4a776/download",
        sha256: "ab97c33a915572b61de77629a8314079b4e8dc4c46afccbef3b357b83c8163ea",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

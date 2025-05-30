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
        sha256: "6066c2921a6ab7e5f84109b51b02df86e29c6c00183c4d69640f786ae46d4932",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c444008a72be4945bd7a/download",
        sha256: "f155e19d30158d010a36c82af01c1f0eb40196b85da412cb8217cca648b43576",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839c4468fb4e073e6351acf/download",
        sha256: "23dd00fdc3dc481972fb6ec9640679151e571fb906b560e6732142e0c6f6d4cf",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c447bda48d61d2f4a776/download",
        sha256: "41ce1f4e7e8ffe0dc4c2d511da0a2c570db2b31fba5a8bc5b28400b61facc0aa",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

cask "spawnai-runner" do
  name "spawnai-runner"
  desc "TODO"
  homepage "https://spawnai.dev"
  version "1.1.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839ca88bda48d61d2f4a781/download",
        sha256: "eca5ebe2bab79f7a0ba60eddb85737c1e94339e26cec2480c59dd7a549ea105c",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839ca89bda48d61d2f4a782/download",
        sha256: "8b4a98176c4f0eae57a8df097444573543906176f547130cf847c31d65fe578c",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839ca8b160d55200a2c5d74/download",
        sha256: "1cd9ddb3a274fc21d0690c92e444ac70ee8d20167e9affcd379a224720475330",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839ca8dcc3649b95b4cb73e/download",
        sha256: "59c148187a4c04f8ff4a9e3c1eba1eb520b21050a414caf71964dd60836aa7d9",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

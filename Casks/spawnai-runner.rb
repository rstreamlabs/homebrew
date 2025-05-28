cask "spawnai-runner" do
  name "spawnai-runner"
  desc "TODO"
  homepage "https://spawnai.dev"
  version "1.0.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/683597911e96d9647917dc5b/download",
        sha256: "a0a0779f7a6bab3d3203d11534d2816bb83337e6180564c56f870329a1f31d84",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/683597937c4e5b234baacd5c/download",
        sha256: "59b2856407b4f94e59561a4652069d3f03b5fb7d3cae06aa4cf3ec61099eb661",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/683597953a01c69ec4b5d56d/download",
        sha256: "0017aed19e21a247d4593ed56f0e139eb73a9547e8d206b93d5af6f14213e23d",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6835979534ed769d9bacfed8/download",
        sha256: "c8fd21804f361064fc5a6dfd67c6d4671e81a5d89f9c662e8c4c6c8159daefbf",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

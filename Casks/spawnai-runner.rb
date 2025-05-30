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
        sha256: "e58c03caad4682a2b8d228eba5af7a221ee50b7a45ec7568a57875e1c885f062",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c444008a72be4945bd7a/download",
        sha256: "08fb04d9dbc5a84e4173c267b4484e7bea0f95a9ed14921e1570d2ff159118ba",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839c4468fb4e073e6351acf/download",
        sha256: "1187816eefb484df0248b95408bca14c051566eff378b04b6c7b60202cefec7c",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839c447bda48d61d2f4a776/download",
        sha256: "d37e375d88b24d8ed35103218a8e28137a16193cee608b2e9eef4997973ba504",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

cask "spawnai-runner" do
  name "spawnai-runner"
  desc "TODO"
  homepage "https://spawnai.dev"
  version "1.2.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839ccb50a1892b7c711d099/download",
        sha256: "3ba240dc9a181dec7669f3e4b56b5e2685362513f5d40a48f1e7dfdf671f2928",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839ccb6cc3649b95b4cb74f/download",
        sha256: "e8dcf0e396ed2b91e7c8065a0298d6c93690a7af531b755b66f22083c8afe9ee",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/6839ccb92ddf0938d5bddb86/download",
        sha256: "6717c8eb5817e09a083456626679526b9d4536a40df4eee7c6de6e3772fc0ba2",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/6839ccb91a6596628d70ffa0/download",
        sha256: "c085cc2e13db1a364d6694fff2473c0d88020f0261c21719c500255aa60e86c8",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/spawnai-runner"
end

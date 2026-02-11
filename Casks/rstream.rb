cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.3.1"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698cb1cb9c12fc3cb9d6a2ce/download",
        sha256: "1f6a07629d6acf6de28e4a93b5306ceed98a1b5aa0bc217171165a5d25e3a136",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698cb1cc9c12fc3cb9d6a2cf/download",
        sha256: "c23adc08f5f8f24deb10d2a1f1973fcbc323f8db392b50646289c39b446e1041",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698cb1ce9c12fc3cb9d6a2da/download",
        sha256: "943682ddd698328b95e2525cf462e9cdf2180be0665a0a767e154fafe962cba1",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698cb1cf56c6189c02cde3fc/download",
        sha256: "a105a26415e28d38507173af12453dfa20040db37346bc2010800c0705c6f9b4",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

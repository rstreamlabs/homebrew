cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.3.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698c9191c1bb4bb07aa9867c/download",
        sha256: "c344a5bd5e81aa4c728f688f1133e943610527684c9ef5293da229e819d6eebc",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698c919251c791265f88a106/download",
        sha256: "2397a716be20fd73d3a810f21337f117be180102bf449901b8558e3ff54e9a89",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/698c96ea36c0f1005d0c75ea/download",
        sha256: "f1cb65f21e468a232357c2956bd933053f533fc58157644647bf4141586d99e3",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/698c97bf36c0f1005d0c75f2/download",
        sha256: "66bfa21ae48954279dbe37d29d359c5f486a5937dd91f4c675faa36a918135dd",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

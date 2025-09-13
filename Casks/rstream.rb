cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.2.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/68c53e794121503d2e66aa91/download",
        sha256: "231c119ce1ce65a027bf3aa3436b69bd784b342bc626b15793dc7e7e4e5f029c",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/68c53e7a5e903436dd472f06/download",
        sha256: "f999a6e265db8aeb108ddc7225b51079a5aff15561df520199574248aa7fe0dd",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/68c53e7c948743f9cc30d4c6/download",
        sha256: "10f0fa9d56601bc575300b194caf52ee2075fe3666ca8e50bd9ef42e93d6d9c2",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/68c53e7efd0d5a6559ed694a/download",
        sha256: "290e90b937bfe8969599672802586a53fc01c44c59e91288a34ed01798a22ba3",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

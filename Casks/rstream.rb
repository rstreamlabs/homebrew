cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.6.1"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/cmmjkuaki000004l21l4qmn3e/download",
        sha256: "2782c9ded3d3b2b646169ffd081039d980277010a4c740d1de7f5c9a2409a919",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/cmmjkub1g000204l2ffmqx5r5/download",
        sha256: "5df699dd5a9408401aee0babd50e485cfc69a298fc0694f721c6f9e527601def",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/cmmjkud04000f04l2zi930co5/download",
        sha256: "8acd91afffbcc3f3f3a6142679b07fed0bd61ea703f5180c04a64066efd8be38",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/cmmjkue28000l04l2he2bxrv8/download",
        sha256: "002351bcd560abd61185235018cfb539f08a45f5a3d4ad49642b0c6769a44055",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

cask "rstream" do
  name "rstream"
  desc "Powerful Tunnels for Modern Applications."
  homepage "https://rstream.io"
  version "1.6.0"
  os = OS.mac? ? "macos" : "linux"
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  packages = {
    "macos" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/cmmi42s0p000204l59gp185f8/download",
        sha256: "cd184c46c1dd67efa191a22ba01e7bb4b2935f090da262f5d4f43cd3dbaf095d",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/cmmi42ufm000004l8ofuvnpzr/download",
        sha256: "1f4260b451c0429f110b7e876bb57221a5721a0e2151adf4f191fc58cb084f36",
      }
    },
    "linux" => {
      "x86_64" => {
        url: "https://rstream.io/api/packages/cmmi42x7d000304jumo8gti9z/download",
        sha256: "b49eb40dac1f1f165fb53509341a7a4e69fe21d23406ade1102dae5c14edcf03",
      },
      "arm64" => {
        url: "https://rstream.io/api/packages/cmmi42zzl000b04ju9ak3l5su/download",
        sha256: "f9045056b3985a1cf314764f0509844022a8219c68880a662c0fdd019890ddb4",
      }
    }
  }
  package = packages[os][arch]
  url package[:url]
  sha256 package[:sha256]
  binary "bin/rstream"
  zap trash: "~/.rstream"
end

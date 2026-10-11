class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.34.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv3sikty000y06l270nfyf9w/download"
      sha256 "3c324c434e977f2a9564d94ed1ea262810df5c99de2b6a97f88c7ee3c729937c"
    else
      url "https://rstream.io/api/packages/cmv3siff2000x06l2yl0yia6q/download"
      sha256 "2c00caecab71cc488656b850c8fcb52757fd627bfa81e98fb1aeed5560fe9847"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv3shkcf000t06l24lm3oh2h/download"
      sha256 "6492eba3ec3fdca9bb92a72b4a79c91a11f805769bb8b640985a2c326edf71ba"
    else
      url "https://rstream.io/api/packages/cmv3sfuwq000d06l2v2vmc5fg/download"
      sha256 "18b29a12c879020c2712afe88501d602214e1a3c251d256399a2eda5d060996c"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

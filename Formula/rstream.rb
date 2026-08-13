class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.27.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsr5gco7000d04laihicjgjp/download"
      sha256 "f62f142b422c68152989957c02e6f12f8713fb8742da1ff18b0c33c7094071f6"
    else
      url "https://rstream.io/api/packages/cmsr5ge9m000e04latklbqmn9/download"
      sha256 "7f58ad97efe3f90c4b3cd1b65fead3163c0bc2cde73bd589c21d380a0adfa774"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsr5glnk000804l2mmq32na9/download"
      sha256 "0997cf51c3f70f087d860f8067533775b814fdfe012bbc67abd7690f66874c4e"
    else
      url "https://rstream.io/api/packages/cmsr5gp7q000e04l5b9v7w0pq/download"
      sha256 "85f1b5bcbdafe1a8ae520ad7a5b5eebda287615d76b3f37af468bef81a62329c"
    end
  end
  def install
    bin.install "rstream"
  end
end

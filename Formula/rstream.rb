class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.32.7"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmukb89tz000w04l8730irvp5/download"
      sha256 "1cb78404d9fe85ac58288beddbb49d822582baeb1852b48729517d0efc567f55"
    else
      url "https://rstream.io/api/packages/cmukb85gb000v04l87l5xbqat/download"
      sha256 "eae59b8f0b3927d940761f10b30cbe7f1c576025295f8b5da51cc3c411c19746"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmukb7kk3000p04l8wpfr23qc/download"
      sha256 "8733f67d47f4f122b673fb54b329dc85ee5c643028640abb388069eada9543e1"
    else
      url "https://rstream.io/api/packages/cmukb6f6b000d04l8zes0jufn/download"
      sha256 "a04938afea1d36cb3fa9bae66569cd57fe8d91d8b4250133eb9695c14443c085"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

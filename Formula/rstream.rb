class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.31.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmtrmktv0000u04l7z63nawl2/download"
      sha256 "df0ff63675805bfe0f3f1b1ca8bc60334c27fa2ebe9bccaaa7ea790fb170e717"
    else
      url "https://rstream.io/api/packages/cmtrmkoma000t04l7wil3mvrb/download"
      sha256 "9a93b1cd674017bebd179c9a2f53b608eae42eb85e62be502770230a9da35679"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmtrmjsf1000n04l7rk9ddhgc/download"
      sha256 "b774a38a924f2fa3828200f854442c1acc5d0e1a29dbb0583fece53fe8c3597f"
    else
      url "https://rstream.io/api/packages/cmtrmhzxb000b04l7zp3t3prp/download"
      sha256 "2f68ad22ee13be3ee8dd4fba19f9e971dfa7d9203cba53629841600d9b85abdf"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

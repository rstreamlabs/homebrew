class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.32.10"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmulxj1q5001904l554qmkuxj/download"
      sha256 "9ff6c7a4d00e1382aaac4978a2d573651493322e057c513bc5fa2b3a5da10adf"
    else
      url "https://rstream.io/api/packages/cmulxiwb0001804l56o8eed8w/download"
      sha256 "748407f7413c96243a57bfaea37d7d3c8f44f2bef13faa15b4253f41764437f0"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmulxi6ha001204l5qe88qkc8/download"
      sha256 "2fa583bd5ebe6d7dfa67058f46ff3b2e533f834232d27e539c1e510ea72ccdb3"
    else
      url "https://rstream.io/api/packages/cmulxgpmk000q04l5edasuno8/download"
      sha256 "329b89262f15e18b11c1af67ba27e8f551d5685d0b300a3eff9d44fc245c6fcf"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

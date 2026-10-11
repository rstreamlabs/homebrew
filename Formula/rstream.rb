class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.34.1"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv40yelp000v06jz51uho0f2/download"
      sha256 "5ac5acf611dfe35f491eda9edfb746f5f8192a981eeabd9cf7eee6de01e00813"
    else
      url "https://rstream.io/api/packages/cmv40y9kk000u06jzpypwc2p1/download"
      sha256 "9e6b670aefb71ca93c92b4a869fec1409e786948ced50fa5ed6b0b4269392d20"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv40xdi0000o06jzcm5t7d99/download"
      sha256 "612d1d788dbc35b63ae48e956fe5b7e869f38d85e8ab462568e2594cf25b1c8b"
    else
      url "https://rstream.io/api/packages/cmv40vnoc000c06jzh826ao2e/download"
      sha256 "462220f23c37875e361dcabae628d762d6d12ac1880db5a9053ce3182422a37d"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

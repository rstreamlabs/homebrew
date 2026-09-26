class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.32.3"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmuiouqdv001204jqe0cb28ch/download"
      sha256 "3ea83551a0948b2f9a87bfd96654c7bea1e51d0770c15261766a9657461436c4"
    else
      url "https://rstream.io/api/packages/cmuioulx7001104jqklwcyi05/download"
      sha256 "b8152a07e5d7267407412b1cc21bfb5c03e4e01ddbc4801ae04e6bf812f6a5c4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmuiotv4u000v04jqk2880f8y/download"
      sha256 "ab652c3ce25a00129f7cbd7da38d7bdb27c484c141ee821b524ba477744d14d0"
    else
      url "https://rstream.io/api/packages/cmuiosbkh000j04jqhi0iv9rw/download"
      sha256 "57bc225b403e155f3f8ab515079d861a7e375ec22caeaa37ae1b4713487f317e"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

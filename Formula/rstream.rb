class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.37.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmw5rspfb001h07jjikju89z7/download"
      sha256 "c9cd73b9dcb83816598718648da51532487893d9593c4e4c8a6c87579219e046"
    else
      url "https://rstream.io/api/packages/cmw5rskvx001g07jjsdysl3lm/download"
      sha256 "46034dc1636d1165635d8aa128bfa92353d5b912e8e11fe1c12c6e1b3a0d38e5"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmw5rrqrt001a07jjqmu81f6c/download"
      sha256 "04694f12f433a686db12c983db69d720bf75d80d7bd8a49bb8d8ce0d6bf24605"
    else
      url "https://rstream.io/api/packages/cmw5rq4nb000v07jjcz4uif4a/download"
      sha256 "1bab5f5de1539189c5c7897c174bbb1951045cba2c9dae9f09f0b331b75b995c"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

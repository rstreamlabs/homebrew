class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.7.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmmrnj6pi000004l1tm8rucc7/download"
      sha256 "8ab1ed0959bf5e1977859f09baf0ef1b2cc2206073ffb5909fa85f0a58419696"
    else
      url "https://rstream.io/api/packages/cmmrnj6vg000004jv3275slfw/download"
      sha256 "ed631bed600028b3790001d56c5778115aa4fd0768d04107492c9ad54d3fb0af"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmmrnjbkd000404jyz67ftsfx/download"
      sha256 "62c6e1bb65c36fb34ffb9e00a8ced33bc56382b7320fcd87b4d299d8c29ab897"
    else
      url "https://rstream.io/api/packages/cmmrnjfjs000d04l2b31fkp7y/download"
      sha256 "fd44b184c86f88c83b3905dfccc6af48e4a0b8b82c032cea82e69f0a0e51532a"
    end
  end
  def install
    bin.install "rstream"
  end
end

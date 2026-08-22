class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.29.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt4qjjxk000004jj31rmf195/download"
      sha256 "9609d6cfb1bab0f33c5c50161e2fa720db43d74e5406cad8f586a9848afc7add"
    else
      url "https://rstream.io/api/packages/cmt4qjme9000104l7jx1sr633/download"
      sha256 "e1bb9b3846a75971aa541c574581aaf68f19207c7abc36fcdbe8c2b0389681e4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt4qjt86000604l7vosu7wmi/download"
      sha256 "be56b25b35e0898997a724f26719c3c2ddaad1cfd6c60df8d1efb0ef83201e60"
    else
      url "https://rstream.io/api/packages/cmt4qjxwz000e04l7pqq3f3pt/download"
      sha256 "eadc7b7372e6ccc0ff03b4b37f7e08b8af848174cb9b333aec0c57eea8375672"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.35.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv9ztby4000u06k1eiv05gqt/download"
      sha256 "db4e9e0939a2b79f0ae367e34f00dd65c0baf45dad966c239eab15faa05b616a"
    else
      url "https://rstream.io/api/packages/cmv9zt7fc000t06k1iqo0x5kl/download"
      sha256 "bb05440fcf7efdc6c6803b9a7fc441f9c6cfd8d4d78e95a8264ffd081d86b7d2"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv9zsd12000n06k10rfpehon/download"
      sha256 "c4e88cbc4c756eb46d3685115d9766925287756518a69ba771fda3de047c158c"
    else
      url "https://rstream.io/api/packages/cmv9zqw1r000b06k1zfqt6hsw/download"
      sha256 "85b226047cbced1668fadbcf2a6c1cc1c5c35cc082ab12816cc3a349d50e6c8a"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

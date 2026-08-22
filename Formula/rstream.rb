class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.29.1"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt4qjjxk000004jj31rmf195/download"
      sha256 "91cd3641c048440fd5f6aa027cff4ff86f0197ba03b80e6421cf29469c98c2f8"
    else
      url "https://rstream.io/api/packages/cmt4qjme9000104l7jx1sr633/download"
      sha256 "217a82a1fa518b772259fa81f82209df6ee4accd00b1eb385d8ba8f89181b972"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt4qjt86000604l7vosu7wmi/download"
      sha256 "168d158c982a0562d7c9103652552105085e7af2fc671b9e16a7df06a7417479"
    else
      url "https://rstream.io/api/packages/cmt4qjxwz000e04l7pqq3f3pt/download"
      sha256 "28c9174ab67682c8640078a2b7502f187ac9eadb78edf83a517c8ec3b03e0e78"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

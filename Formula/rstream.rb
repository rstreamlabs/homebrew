class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.29.3"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt9yvpop000y04l1g63bf5b5/download"
      sha256 "1808a68bdf2a348879c52e51098e7c3e16de1f14d36ba525d7552707b6dcf63a"
    else
      url "https://rstream.io/api/packages/cmt9yvkvv000x04l1to1vg7s1/download"
      sha256 "87886b4cd8679a9318eda0a1da989e5dabaf5f42f4cc220a2d1fde7fe8b70f60"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmt9yuntn000r04l117hjwx51/download"
      sha256 "48cfbbcaa5d922f7a5ad6ef34840e7290abede826776b6a2e9125408608a2496"
    else
      url "https://rstream.io/api/packages/cmt9ysvbd000f04l15peva6mq/download"
      sha256 "8b0abc53f999a5c9eb7a3315b411a676b03ab07f25ad9cfa6cd5e4c68691ae9b"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.36.1"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvfrdu9y000u08k42p8brvar/download"
      sha256 "1d7d4fffb7e46fd8e90f8f22a85eef1c7ff2d1ed393b1263c7f0f92d762fa4ba"
    else
      url "https://rstream.io/api/packages/cmvfrdqg4000t08k4bptn7xk3/download"
      sha256 "2f0dc2738edf820f22e940e1dbb2aa52c55f15b1b81af856a3499771fc330e79"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvfrd3gi000n08k4ozfbay05/download"
      sha256 "16dfc51970e4e6456163c6f7f096cb6b8c07fe31f2c08a50726e1ca2e71e0faa"
    else
      url "https://rstream.io/api/packages/cmvfrbulf000b08k4w52gtwx7/download"
      sha256 "37e8a5dc53b94d20a5c1c940de8cc96635fb8beaf1fbbf640ae3edb0920afe74"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

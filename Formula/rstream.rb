class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.27.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsr7z5vw000004la4x896wg7/download"
      sha256 "956d4d621be651860db7434ad96e2379e27167dbfa87d8faaa1b68caaadb56ff"
    else
      url "https://rstream.io/api/packages/cmsr7z4zj007h04l7ugh8tn0i/download"
      sha256 "fdd997f20dfd36631808090e9c1b83b4b85cc0ac300c94a0b72b3678cd796a2f"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsr7zbjx007r04l7fgwv7av0/download"
      sha256 "61bcc05182fad6ca488a2a2351712969b08d10b6685dc7323e5ef89b0e89ba3f"
    else
      url "https://rstream.io/api/packages/cmsr7zff4000b04laaij4oj52/download"
      sha256 "f8c84c6d5adeac44ebe75751d2aef101d6eae9e4ef692a534508aee9d188d955"
    end
  end
  def install
    bin.install "rstream"
  end
end

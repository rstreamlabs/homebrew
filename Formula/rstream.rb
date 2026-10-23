class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.36.3"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvkxlfsn000q08l8ugu3y90y/download"
      sha256 "e4af5d6bff36e807f681ea8ff417595c425bd20cc8187a1096a70fcbfe854163"
    else
      url "https://rstream.io/api/packages/cmvkxlas8000p08l85kxzx4mb/download"
      sha256 "ba87fb504421b42b7f9d6bad576761b170dc9fc7f43fb6fc5089d2e63f650a53"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvkxkh23000j08l80zjr9ldy/download"
      sha256 "0c134e633de3b77a2fe5572ce560733f616a1914428157e670396b208b2d289a"
    else
      url "https://rstream.io/api/packages/cmvkxitut000708l8ob1nubrw/download"
      sha256 "a86012c1aafbba260ad71cf8533841a00bb03e7707a6d52490fcbfa38440df24"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

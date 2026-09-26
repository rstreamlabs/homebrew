class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.32.4"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmuiwpong000v04l8d8jua7ek/download"
      sha256 "aecc900601ee66ebad84c378c55bb6841deeda27bf35ed856ba3096268d1b2b6"
    else
      url "https://rstream.io/api/packages/cmuiwpiy6000u04l8g6i64wro/download"
      sha256 "d492a227cd3ec3051f6f6c6368d0a5b058ed4187f348adcaaf14669ad83077c1"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmuiwolf2000o04l8mf35x4il/download"
      sha256 "833c13a7e52cd6c3f525fab69c225745525be8ce50f2179f78304f3f233e31fa"
    else
      url "https://rstream.io/api/packages/cmuiwmpwt000c04l83219mbhd/download"
      sha256 "6a684ce0cdf7c6bbbf687979d6ff6035c2b4ec49c7f9764bc845db98d38b4a99"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

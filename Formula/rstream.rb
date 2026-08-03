class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.3"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdhnik3002z04l59p0cdjc5/download"
      sha256 "f4f6e50b708dd6bc9f017aa1c077c153c5131af161408d14cc94995cb22bd560"
    else
      url "https://rstream.io/api/packages/cmsdhnk7x003204l5io0o7b90/download"
      sha256 "ceacacde6f28be8cecdeecf8381d0e742b5ace4ffb83c2661baf008594b95a8b"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdhnqws000904l2a80v1umo/download"
      sha256 "3cd621ebf90413ff243d088e331d0ec9afa4090cc377ef75e7b2870f8676d50f"
    else
      url "https://rstream.io/api/packages/cmsdhnun2000d04jowdfpsame/download"
      sha256 "c95caf4d3487b301b7ff78263125c64d13f2e4faeb43f28152ab16091d03a474"
    end
  end
  def install
    bin.install "rstream"
  end
end

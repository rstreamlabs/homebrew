class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.9.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn91ok4k000004jy1b5th0gl/download"
      sha256 "432b52dd20d3fe180fecf7d270bb9019ac87b155c5e006aacedcff79b7369810"
    else
      url "https://rstream.io/api/packages/cmn91okxl000004jlorjbeiwc/download"
      sha256 "0942aeb6cd343c97ec1319b47811163b69fce5b63ad0428d7d00052eb61918ec"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn91onlu000404jvzpav1hhs/download"
      sha256 "125c87ae26deb7ed2cb6ea68ecda0c30f3a4bae80894054ffec60674b8a28196"
    else
      url "https://rstream.io/api/packages/cmn91oq0a000204k4eo0qo7sh/download"
      sha256 "7a6550204ead06f016f9a632db06cab38562515c3b5a13c01d120b34c964ad56"
    end
  end
  def install
    bin.install "rstream"
  end
end

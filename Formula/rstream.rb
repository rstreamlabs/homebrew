class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsau0nsq000004jrz8853ghe/download"
      sha256 "7b6fcd28b1ba0ab81297fe60cf35ebac688677f746298f77300cfbc45404a110"
    else
      url "https://rstream.io/api/packages/cmsau0pbi000104l4snzoowti/download"
      sha256 "7d67a8d69b8a5cca04e1125a602c189317ba25180ed2c1576ea6e85351c123f4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsau0und000a04laxxjhcdzd/download"
      sha256 "f75f8981e03b28bf7f1701e60c26869bad07ccbcc0bb59f51439f052f744d63e"
    else
      url "https://rstream.io/api/packages/cmsau0y2o000i04lat1ube02r/download"
      sha256 "8464aae392e9ccc97408dc5dd12a4f92f6d3062ffb4acc80371b20869b169c79"
    end
  end
  def install
    bin.install "rstream"
  end
end

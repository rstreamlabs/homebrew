class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.23.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmqtkgk5c000004jowj489bd7/download"
      sha256 "060c9eebe283467e0fdedbbdba81056ca78a47397bb5fb3955b1c651a2e15380"
    else
      url "https://rstream.io/api/packages/cmqtkgohv000204l8elhbln4f/download"
      sha256 "ad1447049740c9a20b450acd3db565ce5bab06960fac4ee5d18858bfc37dcb4d"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmqtkgy84000a04jrs6dvz8ob/download"
      sha256 "473789ff04e93a572fecf31dfff6305296093293b6db77ffea922b3b98d7b08f"
    else
      url "https://rstream.io/api/packages/cmqtkh33f000904l8uur52srx/download"
      sha256 "4baf5b7e44e3b8a7c8a54a2174c5e67cfbfda5b2b774999169c9bf0c9800bf6c"
    end
  end
  def install
    bin.install "rstream"
  end
end

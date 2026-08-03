class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.4"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdm0fw4005t04iftufgka5g/download"
      sha256 "60abfde92389e3258e6e730eea2bb7ffafb8af2e7ccf2f3bb0fe2a0b3acefd80"
    else
      url "https://rstream.io/api/packages/cmsdm0hza005w04ifcj5almdl/download"
      sha256 "d81852ca618965847f9a4df3c1d37bf45a423f87bb3af8e9c7e46303d157c207"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdm0p2x000a04jxs3xel5ht/download"
      sha256 "86b87bbb92d241e73d9a4f3411d2452e49084d9577e37fcc2f4a509349107478"
    else
      url "https://rstream.io/api/packages/cmsdm0t6v000f04jxc9571k81/download"
      sha256 "d18a188f4e6fd2c4df31518858314ef44da54cd3c9573d4419f0daa3a429f6fd"
    end
  end
  def install
    bin.install "rstream"
  end
end

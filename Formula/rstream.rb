class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.4"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdm0fw4005t04iftufgka5g/download"
      sha256 "afbd56a365aa6c0124695dca91f19b6e602116ebd7b9ccbea217ef5be4ca4914"
    else
      url "https://rstream.io/api/packages/cmsdm0hza005w04ifcj5almdl/download"
      sha256 "153432db502a52561108c4ea4af7dd3fc852951eee2f8233a3491acb8707ce82"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdm0p2x000a04jxs3xel5ht/download"
      sha256 "6421b10a496672ff82d8ece8a54fd3e86eaf02633dfdc37e1f6fde2ba81b616e"
    else
      url "https://rstream.io/api/packages/cmsdm0t6v000f04jxc9571k81/download"
      sha256 "3f5eefd6a54e601900ec8835aa22cfb85caad14be9ee4fa106efe0b3407acca1"
    end
  end
  def install
    bin.install "rstream"
  end
end

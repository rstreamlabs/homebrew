class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.17.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpiqjv5m000f04l78cynglbl/download"
      sha256 "330741b1b79bea6f774c307285f06d464c16088250124c4ec67c9862acc161f2"
    else
      url "https://rstream.io/api/packages/cmpiqjzo1000004k0bi0f6oq9/download"
      sha256 "dfa69c9c03656c533bb983a421d2213641e4b7380fea3bbcb8d23eb2f66a4b12"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpiqk6xy000s04l7ehb90l7u/download"
      sha256 "9a14c6b421923a0df6073c73f08db7f5410fcd29b403b007b02efeb855fc22e7"
    else
      url "https://rstream.io/api/packages/cmpiqkc8p001004l72ap4w88j/download"
      sha256 "8299e8e311333cfe00d91a8336557eda1da76b327a1d25752398adf5bc917f83"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.14.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmoor59rs000004l24p7hlv95/download"
      sha256 "8ff164ee7f234f47078278f755e4b92b9b74fd9f2f7d89e69134ab345c39ba89"
    else
      url "https://rstream.io/api/packages/cmoor5cgy000004jokl8yq1a8/download"
      sha256 "5af6669061a5b12aeaf5ea80efb8bf11c4ed8a4b3dbb9a4864d141dabb3dda21"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmoor63zm000804juehg70s54/download"
      sha256 "9ad123d131a530f921c74c83c922405fbca469badfb16400d0777c421693fc36"
    else
      url "https://rstream.io/api/packages/cmoor681a000404jogq128pwv/download"
      sha256 "6a2d3f9838e0e0ef780c1fb235e3b87b06af5fe91e0db2a2a8841b263af6077a"
    end
  end
  def install
    bin.install "rstream"
  end
end

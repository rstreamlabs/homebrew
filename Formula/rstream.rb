class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.28.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsulfcp4000904l1fdnzauw0/download"
      sha256 "54c6f7c9f6eabfcac37fd793a12cca5663211a0852645cd10a8c5cab649515a1"
    else
      url "https://rstream.io/api/packages/cmsulffvv000104ibt964ra90/download"
      sha256 "0dc464dc35c3dbc98926a31f5674a9b40214981c35685ecae467c45d8339959c"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsulfp2c000904ibe5i75tpb/download"
      sha256 "3767306e3c3901b9549d14bf9ec393f9eb4e71ba1503441c8d50e0744d743d56"
    else
      url "https://rstream.io/api/packages/cmsulfuqu000c04ibqbboko4l/download"
      sha256 "37ed08b64c9cea5c94196146e7d91289f86cba533af3d54a95762babf4ff0146"
    end
  end
  def install
    bin.install "rstream"
  end
end

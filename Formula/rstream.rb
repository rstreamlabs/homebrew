class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.9.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn4ipttg000004l27tl5qseq/download"
      sha256 "cd6b0132d6f0e6dc392e77d232dd1e6289eda485ab2eba7ad1ca64eb0c27ea91"
    else
      url "https://rstream.io/api/packages/cmn4ipu9s000004jvmis5ln12/download"
      sha256 "00e8703461f1cdc912a812028c46a9abde20f83c463c35ff4c90e07ecad70b92"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn4ipvpj000104jsboh54nma/download"
      sha256 "d102f1f9fbdd5df334914909d1ad501eec93b860801b764da54f16e5bfb39c2d"
    else
      url "https://rstream.io/api/packages/cmn4ipxkg000304jshtbfu9io/download"
      sha256 "d9149d0509ffc1f0ab52b4bfa3cf68b72713938e96f41f55e8a299d10bd9476e"
    end
  end
  def install
    bin.install "rstream"
  end
end

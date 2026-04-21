class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.11.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmo8ods0n000004k1mvw49aup/download"
      sha256 "042654f3ced4ad15252f1f3bd2fc453af761907c08c1393ed8177f51829ffeb7"
    else
      url "https://rstream.io/api/packages/cmo8odrzi000004kzpmdn2uq6/download"
      sha256 "5b83660d03b139491c6a27b04e1431da5bc31f3eef2d3bdcc726d95bc234f6c8"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmo8odv1k000604jsbjy356mu/download"
      sha256 "dc545e58fc959a319b2db63d5eedcdcf9e645cd506709a7ec61bda4d77d57e66"
    else
      url "https://rstream.io/api/packages/cmo8odwli000c04jsy15vpfnl/download"
      sha256 "174ec0d128fef8ca7457eacc612d7deb4e615e45cc13ed178c0f890c2d09174b"
    end
  end
  def install
    bin.install "rstream"
  end
end

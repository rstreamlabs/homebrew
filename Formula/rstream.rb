class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdfd7t5003504k2l9e96tyk/download"
      sha256 "0753930bbcc779053e4765608152beb5a37fdc6980db22dd8f5321643fb3cbaf"
    else
      url "https://rstream.io/api/packages/cmsdfdb2f000104juxf2962f1/download"
      sha256 "97574eb2f48e1606f766d3a3552ad435e133db7884ce8054b3d5c0bba14a1e27"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdfdgva000d04jukv3rlv9y/download"
      sha256 "56b33e5a9bda5afcd98673c1ad8ce692c646a1c065101174e56d90822c42a01c"
    else
      url "https://rstream.io/api/packages/cmsdfdn09000004jpc8wzdftr/download"
      sha256 "674e44bce07c994cec3b7a4b4c3df65dfea76ea08ac390edb78302f335d4b687"
    end
  end
  def install
    bin.install "rstream"
  end
end

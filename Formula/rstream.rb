class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.8.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn27c2a1000004l9ltnj496p/download"
      sha256 "8907e8f18b1651f807d861542c56fa9bdf1c6a40344f747a7a53d570212948de"
    else
      url "https://rstream.io/api/packages/cmn27c41l000004le21fc0yqc/download"
      sha256 "424aabcba60a06a01ab0a54eed10c15de7696baabc682c3270e24e0a6d2fbc25"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmn27c5i3000104l5hhibv19t/download"
      sha256 "b5bc8de46cfded3066f191076400e1f118869183cccdf4997ecd306faee6c132"
    else
      url "https://rstream.io/api/packages/cmn27c6f7000504jy8lv52j4w/download"
      sha256 "a6ed4a8d1f53ca63fc19dd97029fa0ddc4254666d41b09f2b56642b5374e741f"
    end
  end
  def install
    bin.install "rstream"
  end
end

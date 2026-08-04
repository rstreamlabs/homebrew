class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.26.5"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdtjzb4005e04l975y7idfv/download"
      sha256 "fa41721a70779f3300409dbb403c21e2586d523f2d9604a5106450fbea8a1d5a"
    else
      url "https://rstream.io/api/packages/cmsdtk1na001t04jp31biuivh/download"
      sha256 "9c282dbbca5bcc1b4355c1a0b770bafdaae2be4e4429dbbe11a303abcbe39c91"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdtk8ri002204jpyxgkli9a/download"
      sha256 "147eca6cb7fe5679da6806bfbd889cc3e6b5d6a964771103a7283dcd54ef5686"
    else
      url "https://rstream.io/api/packages/cmsdtkcyx005o04l9b7uyhfbt/download"
      sha256 "ea47d8c28eae2163c8d016bc004b716b4f0aa5c5a2049c438de50da96fe7d2e3"
    end
  end
  def install
    bin.install "rstream"
  end
end

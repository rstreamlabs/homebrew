class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.22.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmqslcxng000004l748h9kytg/download"
      sha256 "2eb24e1c6933aae3ea637c627cd110d6b3d8f1b19fed7f62192c0828aac54aea"
    else
      url "https://rstream.io/api/packages/cmqslcy2v000104l7ebhpyha8/download"
      sha256 "cd453501df9b79dac44f1e3316e911d2e21b67a55839d0c18eebe024c12beb35"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmqsld6rc000f04l7abegkfnd/download"
      sha256 "a0e93b4dfe3096b9918c6cbc5b79a5036aa880a502c0f987993a87980d8007f0"
    else
      url "https://rstream.io/api/packages/cmqsldapt000e04k069ofdd1h/download"
      sha256 "098801a12feebe8dfc310b5ca67a848bae4b76ced0abb0b66871e3bda8494b92"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.17.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpfzv9lw000104ikk7bfbdh5/download"
      sha256 "1e88aba9a5af9df5fc490fb4719ea5a376253c280507ba784e786f0874d0fe84"
    else
      url "https://rstream.io/api/packages/cmpfzvbzt000404ikkk6cotvf/download"
      sha256 "66fd91614b031c5bfefdc5d7e443f9edba3070e53dfa93fd4337e837835a48c3"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpfzvn56000h04ikwq0blkrr/download"
      sha256 "23e4a04db9fc80c52cd01eb0b3cd18c91f872504d4d40b46b14a65fe95ef517a"
    else
      url "https://rstream.io/api/packages/cmpfzvrye000304jlvj14bzfa/download"
      sha256 "3effa8cdff90f1db366486c3500e1bdcf7653d5c11582e700d0acf036a592849"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.16.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpftocit000004ie0oib19wp/download"
      sha256 "5e89863e615121d6a930b4826195589f3d5f65522db2e262f4ed88a403e89a05"
    else
      url "https://rstream.io/api/packages/cmpftoelk000204lao24devww/download"
      sha256 "cc82ce3cdfcc9ded5198e7a82784ade457557758a8fbe229536aa040b8d89bb9"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpftoncp000604ieua7lm7um/download"
      sha256 "80df11a496ba8fdff0804e5381c72168960b74607c605d86218d9d1c7130aa3f"
    else
      url "https://rstream.io/api/packages/cmpftots8000404k02b0iygb8/download"
      sha256 "2bebfbe2e0ed58ea6f2b5a1a748b0413830ba551090ea5cbf2928dce15a8593a"
    end
  end
  def install
    bin.install "rstream"
  end
end

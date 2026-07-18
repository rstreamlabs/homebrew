class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.25.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrqn8elg000004ldexu5q833/download"
      sha256 "17a6e9bdaf3f58eea04804078b731d1dd7b3c94cf18631ba2f4436bc57ffc3b4"
    else
      url "https://rstream.io/api/packages/cmrqn8h8q000104law8oyfxcm/download"
      sha256 "e850bdfbd0cf96127066c9f392f1350a4d9256e786258c8958a0960c1e275c99"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrqn8slw000c04lauaq4gpjd/download"
      sha256 "f97c1cdc2af61e198a2433ab01aab141a375364ce1a7a516a3a596e90888b046"
    else
      url "https://rstream.io/api/packages/cmrqn8xii000904ifkr37za64/download"
      sha256 "17b9722adfec1093b47b4e578fb6469f1dc675f2e1e0226174f831d4b5e31222"
    end
  end
  def install
    bin.install "rstream"
  end
end

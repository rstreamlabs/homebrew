class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.28.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsufwgvq000804la2n7y5jdl/download"
      sha256 "675e4c0ff42311359086b2e9d2a9f9a2bd3d991114b533f6e3989f6b2e40f464"
    else
      url "https://rstream.io/api/packages/cmsufwivk000b04lax587g8nn/download"
      sha256 "47c723b9d961b069c8a7a94044c38b9e0cdac32fff0a6eee2aea83b9a45144af"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsufwpxq000904la5ch7ozfu/download"
      sha256 "ac142a879d5b8134a6839da1a4632adc2ddbd3b43befbea0953bbd6ee9511c75"
    else
      url "https://rstream.io/api/packages/cmsufwti8000504kzzf7c4kp6/download"
      sha256 "95e80e4b73854aa04f08c51c18d4870ad847c34f3262548598c01a91cc525996"
    end
  end
  def install
    bin.install "rstream"
  end
end

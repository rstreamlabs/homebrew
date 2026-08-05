class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.26.6"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsfzl90h000004l591bdh2p3/download"
      sha256 "824d6881bb3f5ec20972885ab0f2946d1b5e303ec7071ed0810a38c7ec3aca16"
    else
      url "https://rstream.io/api/packages/cmsfzla04000104l1pj9leqx4/download"
      sha256 "e7aa4e125f3cb9b13ffbec69856f2d3d656cab02a274045ab13678d23afa9cb4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsfzljj4000504l1c7e5jine/download"
      sha256 "075c064bb2ae61c8d4a5a64fd578a1cbeb89f78f5546887bffa03094ad6bebca"
    else
      url "https://rstream.io/api/packages/cmsfzlooe000904l5rfulgd9d/download"
      sha256 "c1b853c091de7181d81b32bb7deb4462582d2d9fc5216baf7b2b5ea15f399448"
    end
  end
  def install
    bin.install "rstream"
  end
end

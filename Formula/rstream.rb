class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.7.0"
  on_macos do
    if Hardware::CPU.intel?
      url: "https://rstream.io/api/packages/cmmkoiha1000004kyx08jfdgc/download"
        sha256: "484fe1f52d465812232f1ccfa734a6260caf6ecfb978b99f724adebc2ee065eb"
    else
      url: "https://rstream.io/api/packages/cmmkoii5e000004juhnpcboql/download"
        sha256: "a58090c992dbb4e33061f3d1f0fe36e7f345cdf9cf26ee904d35fcd268e2acb4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url: "https://rstream.io/api/packages/cmmkoiksd000504jxt2zsgtg9/download"
        sha256: "02d0f817ccf5e0e0746c6dccfefa7b36ac09e0f1b8d570536d31b0e161e18090"
    else
      url: "https://rstream.io/api/packages/cmmkoin82000704l8qpa2jadp/download"
        sha256: "773638cc8e34b6202490d2b3f49acab2e991ba58689bb3ecbf63ff2f8bf59f2b"
    end
  end
  def install
    bin.install "bin/rstream"
  end
end

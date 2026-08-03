class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.3"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdhnik3002z04l59p0cdjc5/download"
      sha256 "6d43fdb4366c407ec86df657f6abeb189b9092c87b134fadadb1d4d2951c5ed3"
    else
      url "https://rstream.io/api/packages/cmsdhnk7x003204l5io0o7b90/download"
      sha256 "d44f845e6e84b765a2943a9403fb538c7d87269019b1f59ed83ac85e97215041"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsdhnqws000904l2a80v1umo/download"
      sha256 "0162a40753fd9cb39c37f8ecabce3154aa2b2212a521d41db8c22d6e6105af1b"
    else
      url "https://rstream.io/api/packages/cmsdhnun2000d04jowdfpsame/download"
      sha256 "547d0f5915c0a881877ef7297ffed3f5e21ff7206baae1d128c85cae7dc76e1f"
    end
  end
  def install
    bin.install "rstream"
  end
end

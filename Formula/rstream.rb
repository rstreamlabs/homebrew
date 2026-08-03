class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.26.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsd954zw000004jwhtowrvkr/download"
      sha256 "0b38ac17bcc7a4fe6cd8c356ed4df634e8458f9ca6258391afb9b6c54fbe4450"
    else
      url "https://rstream.io/api/packages/cmsd9565d000104jw4h7g4rir/download"
      sha256 "9885808bbe9b6e3e62a07a01f1ecf79baf829a25201486142a66ea1c332d2f05"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsd95flk000604jwir0jm5qa/download"
      sha256 "97eed3f68e3df6930336747218bbf3df1c8e25d53a397a91debb058cb1b37887"
    else
      url "https://rstream.io/api/packages/cmsd95kjn000a04jwfgcm8hd6/download"
      sha256 "c9bc61bf5addd03b4dedc610d91fed5f719688c3d795c4a5a625070c8c7678f1"
    end
  end
  def install
    bin.install "rstream"
  end
end

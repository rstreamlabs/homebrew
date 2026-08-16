class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.28.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsvyh09b000704i8a14ord2v/download"
      sha256 "56e77126be99d731435a71f15bffad22c0a89823111f532f7b1aaaf55fc07a53"
    else
      url "https://rstream.io/api/packages/cmsvyh2bo000804i8d0grg8fd/download"
      sha256 "679d0763bafc1dd0e07ccf5a9c9d6f17848ea949f084639e3f16085a69f911e8"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsvyh94s000404l2asqhwp9b/download"
      sha256 "4b54618d4014e19d49df77ada2bb8971daea1cdd4f113f5bd4f6e8450423a1c6"
    else
      url "https://rstream.io/api/packages/cmsvyht0o000m04l2w5qhasy2/download"
      sha256 "d3c79dbcb60145a337bee1bf3ba5da6c0266348084a1a865565263d9860a6399"
    end
  end
  def install
    bin.install "rstream"
  end
end

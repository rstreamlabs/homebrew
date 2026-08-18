class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.29.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsy2bbha000004l7iazg3mn6/download"
      sha256 "f3a0a196b39fd6334a2bf5be5cdeea3c1bbc5d2a7649e76e3291fcefa4ada2af"
    else
      url "https://rstream.io/api/packages/cmsy2be10000204l7nqvsbl1c/download"
      sha256 "adf793517d19d215d28705185fd5244b6a177c79dc9138e38658cca4c6e4cf56"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsy2bmra000304ju22hixxlc/download"
      sha256 "e772529c3656ce6f0f110f0d0d0cc5795adec73b4c0c49f8094cc76c749d5a6f"
    else
      url "https://rstream.io/api/packages/cmsy2bqbk000304jxqeaox47a/download"
      sha256 "b224d0f385f9bcff576688934f8d926de0f3d0e6fc90050c9a19c3111a6fdd15"
    end
  end
  def install
    bin.install "rstream"
  end
end

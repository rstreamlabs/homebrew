class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.27.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsqi0vhg000004l4qth39wip/download"
      sha256 "5dc60b9a2903d0585de990940707cb8d106ebfd14d56041f2ed91a573a18c8f3"
    else
      url "https://rstream.io/api/packages/cmsqi0xkq000104l4v95n68f7/download"
      sha256 "98b0a2ea134fccddb9d55451a13a5686411fe2949a83a1cb78303dd8101bd139"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsqi1525000704js43ok953x/download"
      sha256 "346a5ad3dcdc3b6a6128a02945b1e647646d8c2cb82a9ee2d7a75d5a0407acd2"
    else
      url "https://rstream.io/api/packages/cmsqi1b0z000104l12oum9bnc/download"
      sha256 "532dd87cfc56f60800235370a2068be8ee28b6150a675f0f5c65661e7660ebfb"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.24.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrgitzsx000504ik63xx5yt9/download"
      sha256 "aca955641097f11adab0e9e1ccd5ad27994c6aaa9662e095dc948b1102a553e6"
    else
      url "https://rstream.io/api/packages/cmrgiu2r9000104l7nz23evnn/download"
      sha256 "48f6e7d03cee70d536e13535a46c15ebdf000397f66d896c81885141c8544483"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrgiudqz000g04l7rozo924s/download"
      sha256 "8a02058bbae4d72b0fa5f15e7da1d4542a44f6a215da7b25bd1a8385077f7ba8"
    else
      url "https://rstream.io/api/packages/cmrgiujg0000o04l7441qewr0/download"
      sha256 "957aa9e18bcf8823496e3f15ba28f888e5bfe5f3bea5cff9ae4eb41a7c91e6a8"
    end
  end
  def install
    bin.install "rstream"
  end
end

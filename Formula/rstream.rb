class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.25.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrqjzm0f000e04jwuhcc731p/download"
      sha256 "393a7069a2e20374d58104c5888e5761a8afa43a5e1574ed2a04eef453118e54"
    else
      url "https://rstream.io/api/packages/cmrqjzoap000h04jwiv04m1tr/download"
      sha256 "9e193d58d94fc8aef0252c0078c397e2065e45883820b20e4c95cfe3eae53c39"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrqjzwd4000o04jwtxui9tso/download"
      sha256 "68439c051e59c43161f1bf0ee7ed6d51c14317099ac17ab81e89a0e477c620ee"
    else
      url "https://rstream.io/api/packages/cmrqk011f000u04jw12py6m8u/download"
      sha256 "cfc60bc94d43cc59612990d5f26eb67ba28a5a3828fa223316f52ab56a842f12"
    end
  end
  def install
    bin.install "rstream"
  end
end

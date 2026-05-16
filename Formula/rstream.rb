class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.15.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmp8kaagt000004l2myrzl0mo/download"
      sha256 "9aff4c5d754d5db4d0160b2e14901a71a5ecc8e82dc7daffc8a23772569c2ac5"
    else
      url "https://rstream.io/api/packages/cmp8kakyr000404l2isqj16zx/download"
      sha256 "cd6d45988eef79f7f68967b6b774798a68a5f073aa033f98bd81b6e2e933afb8"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmp8kb7tm000i04l2v2wobv9z/download"
      sha256 "2dc2f2d09fabfcd16d773c980ad540c9d1e36b6b4c968da66afabca551e10738"
    else
      url "https://rstream.io/api/packages/cmp8kbhl9000q04l2gd6obtj2/download"
      sha256 "c4e3324fb3d3d5b2dc1bfa2d913ecc77b26129e6a2517fb4ff4364a1dae64a88"
    end
  end
  def install
    bin.install "rstream"
  end
end

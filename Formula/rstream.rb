class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.12.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmobw9a9f000004l100qrnotv/download"
      sha256 "c0aa97340fe9e57b1a3daa1688048697840a314c3c6cdd7b8dde2887b16e0675"
    else
      url "https://rstream.io/api/packages/cmobw9afl000104l12x4130z1/download"
      sha256 "1b5a6c4e1c14bd2418e795801f3953b6357f20c2f59ade1add0239c4ba67a458"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmobw9gp2000704l795rnyt7v/download"
      sha256 "c16da4fe5e1d9cf8f9e607258d1f9cb4fc1c07a4eee1392ceb57a36ddd6f739f"
    else
      url "https://rstream.io/api/packages/cmobw9kn5000804l14p08e15b/download"
      sha256 "a735b79af429a4514209fea7e5ab656b9aa54136264b7675674f5ab19a5a7d4e"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.13.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmohb780d000004l5e3vrr0s1/download"
      sha256 "217f1fd163bdbc3ddd436b8480de96a0bfa30c6d18a8e15408cf2261e905d1bd"
    else
      url "https://rstream.io/api/packages/cmohb782m000104l5xjab50zg/download"
      sha256 "293e6e86515b3f379a35cb239f9d60cf97903e3313304eb60b1b80f36e02b081"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmohb7cnm000304laq3sfsypo/download"
      sha256 "779c7d351e6bd36247933e7b4808c747cc9985a14765ea481a0e2ba32fb08d51"
    else
      url "https://rstream.io/api/packages/cmohb7f1s000b04law90tqwte/download"
      sha256 "755472c46c2fc7ea22517e4fb00666177445e06178d32134183bcbfd0d5ae730"
    end
  end
  def install
    bin.install "rstream"
  end
end

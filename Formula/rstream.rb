class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.18.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpmomviq000e04jxdky32wsh/download"
      sha256 "c7e80d3e5129bb13ec96b4610a5ff8ee470554e2c0e0975499b13a6163b96880"
    else
      url "https://rstream.io/api/packages/cmpmomxrr000h04jx8hjv242r/download"
      sha256 "6358125943a94fe6cfcce5cbcbaadb849e55a864f94596b6b905459d20bda861"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpmon6f5000b04jpap92viqp/download"
      sha256 "c74adc5ce63870a52e7dd85ce6c5356cdaa2718639f1c05ff818f623e8eff902"
    else
      url "https://rstream.io/api/packages/cmpmonamw000r04jxfh5dq645/download"
      sha256 "79207fff74d86919b186c4f9a7fa10e26aa183ae3eba3b676deaeaf705ffea5d"
    end
  end
  def install
    bin.install "rstream"
  end
end

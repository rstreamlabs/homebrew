class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.10.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmngi5a5d000004jyc0ror8mi/download"
      sha256 "4a3c148df6bbac75820ff8c0d4dd11871f63e6e91cb8a94228fa3c4f7949fa47"
    else
      url "https://rstream.io/api/packages/cmngi5cgy000004l82eeu8utt/download"
      sha256 "73b1fbda00b9fecfb3c429bbd44b43c2b25b06f8bb2dbf65a62933d435096a6f"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmngi5fgr000204l1hz2oporu/download"
      sha256 "cda145ad76a1aad1c6d2e0447663c7543706e9c862cac9d6c04c31f0e237875e"
    else
      url "https://rstream.io/api/packages/cmngi5hge000804l1od6dal7c/download"
      sha256 "9a9ce0359f17ad018b529dfb818c3331b5ceec67cf74200e703184487ee3ab70"
    end
  end
  def install
    bin.install "rstream"
  end
end

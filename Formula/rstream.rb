class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.30.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmtmt34hj000t04jjlcrhftsn/download"
      sha256 "928de925ce18a34e686108aa59e4e01c0e7eae3f62b13c6f2688f165e8c50d9a"
    else
      url "https://rstream.io/api/packages/cmtmt313y000s04jj2vm2fal4/download"
      sha256 "aaa1dd104f0cff938023444aa1bd5d6c9446a57fc13680192270c3cf38f4431e"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmtmt2fi2000m04jja6ax5vf6/download"
      sha256 "678ce2790c83dab4d1ea626dbfbbf840f065252ad7c080f7b368aaf04035cba4"
    else
      url "https://rstream.io/api/packages/cmtmt18t2000a04jjx7fgbba9/download"
      sha256 "3ecfac686795c7c09c9e3580c56585969ae6f1421ec7c4ad0332d3377a7b6dc6"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

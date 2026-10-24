class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.36.4"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvlop69x000s07l6tlokpqw7/download"
      sha256 "1b3376ab24aacef52fd91a6b5d162de285627ab723c8f57040958f0a8bad6a80"
    else
      url "https://rstream.io/api/packages/cmvlop2pf000r07l6l28id20i/download"
      sha256 "79945288a86f4b8136b4eb39a4e69d6364d67987c8bd3cc547e1e247d51f8aed"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvlooc3x000l07l6jv693dcz/download"
      sha256 "0a5fa2f7fceb509f658812a848d2657980d5777d09a2efad4385d260dedbb713"
    else
      url "https://rstream.io/api/packages/cmvlomzhw000907l6qk38ksqu/download"
      sha256 "b979776cbc5a315fbbc12274e5a2fbf3b8596fa9135055812174a01bf3e386aa"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

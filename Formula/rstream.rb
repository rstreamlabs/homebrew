class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.36.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvee6de4000u08jp9bg1kmwe/download"
      sha256 "1a9876ea6d8f284dc80df927246e050bd63df4530e0bd674d0f12ddc64ae9882"
    else
      url "https://rstream.io/api/packages/cmvee69sp000t08jpfkjaun4j/download"
      sha256 "3018958744b6365e95ad38d0420b9539d8da88841721c8e916e600f7f18870d4"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmvee5ms9000n08jp84zh1bqv/download"
      sha256 "301c9800a0bfe5e09e8cc2fef43ff252c7be128c059031514e0175c7ac399fa1"
    else
      url "https://rstream.io/api/packages/cmvee4di8000b08jprm7u97fb/download"
      sha256 "033312c2dee0ee809003cff1416847ca37908a49a00f481b69d1448f2eb2a62e"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

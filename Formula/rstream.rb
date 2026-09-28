class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.32.8"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmul53696000504juj7axzakj/download"
      sha256 "3493ace52d76ad699115bcb726f63dfc6057592e1fd4db3441da1386cb82abbc"
    else
      url "https://rstream.io/api/packages/cmul53311000404juoopm7b6w/download"
      sha256 "a5e0121b5d1761da019f574d603e1e889116395e4a47798d2110a4adb07bff8c"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmul52fk2000n04l614iz4xca/download"
      sha256 "b4de36ddf152a918ffce0e4360e18eb8438c8b67ec9db01f952820bb5d2881cd"
    else
      url "https://rstream.io/api/packages/cmul516yr000b04l6xdxk7xrk/download"
      sha256 "e3d31b4366335dc6998a13405a4048c135f84eb17d263e713b3b1eeb48f90c08"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

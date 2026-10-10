class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.33.1"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv2k9ykz000506jqb5osoxgx/download"
      sha256 "199d5fdce3edcee52c45f2e0dbd0ef54369f00297db6d18e15a8932f1de46fd2"
    else
      url "https://rstream.io/api/packages/cmv2k9upu000406jqmybcmw2m/download"
      sha256 "b617b19c8a461e093e61b5214c3491ae9fb5ad9bc2fe0f4dc2823da0fff2f650"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv2k97s1000h06l2ce0ag832/download"
      sha256 "d0026dbc311d02e57117ca1f4612a0de78637a29872988ba2f693886f44472c0"
    else
      url "https://rstream.io/api/packages/cmv2k80y6000506l2b4t4n4p4/download"
      sha256 "ae0ff216b438e126f5663f428ddd438b72145dae80b4b3ef4065f7266a6ee763"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.38.1"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmwsa05sz001607lavhtxep7d/download"
      sha256 "59c25d74bd82a1e0520d100b74faf63df5e8f669a09ff1f520adac6d40a9d07e"
    else
      url "https://rstream.io/api/packages/cmwsa0287001507lahfbvdtv6/download"
      sha256 "41c20d1d9cbbd8a90a041f941356c580a0fc156d584ad893ad8cf3619a5da3f0"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmws9zdcm000z07laowd50cmi/download"
      sha256 "0b72de37d806f561ffda5001e502ed008816ad99b706c9cdeeb5094c8f830d55"
    else
      url "https://rstream.io/api/packages/cmws9y1on000n07latg44gjx8/download"
      sha256 "6812cd1b1469509782fbca95f60fc8268f9308ae24e0caea938779f2344106aa"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

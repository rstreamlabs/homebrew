class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.27.3"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsrhvof4009z04ilhsmqwtqg/download"
      sha256 "66f68e3c560f5409dc32bb00f5e71f0384e7d71aa95c545b20a70a945c29e7d6"
    else
      url "https://rstream.io/api/packages/cmsrhvq9300a004ilhka4apuh/download"
      sha256 "5dfef542d1db17dfcda9e8e82a866b7c33451f2e63ff05ea90f196cdbb3b54d5"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmsrhvxob000804l2r27m36h7/download"
      sha256 "4880f388d4469ee136a9b2a334274b5417af52a879fd48f676505b895c07d752"
    else
      url "https://rstream.io/api/packages/cmsrhw1b4000d04l2f4lhkmrf/download"
      sha256 "e59c91cf11d93dfefd6147853c9d6235a3559a3098f2096f7914ee6834428a5c"
    end
  end
  def install
    bin.install "rstream"
  end
end

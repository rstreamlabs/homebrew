class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.27.4"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmstdp2hj000004l1ytf2cont/download"
      sha256 "3f05eb4bca28d0d2483582500c41a8a7f5964bbb53e00e654722153d389011b2"
    else
      url "https://rstream.io/api/packages/cmstdp42u000104l1ii1iifhu/download"
      sha256 "1794259b60502ec5d651283b6dd8eef8554921261f16a40c10eba23babe808d2"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmstdpb0c000d04jljkmjw24h/download"
      sha256 "a11eb059cab5d8b5c47dcc0a5fa49500a7839739c6940dd47534485a723f3b69"
    else
      url "https://rstream.io/api/packages/cmstdpejd000104l74kmhf2vp/download"
      sha256 "007eea210c339a0364ad9d6013fab4594ea7c48ff19389fabf7d413e08918002"
    end
  end
  def install
    bin.install "rstream"
  end
end

class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.24.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrgv7g0c000004ji7a38ly6s/download"
      sha256 "f9f18d2e79c7b208b3e002034437a347040e9352672d2ec144bc8d884314204f"
    else
      url "https://rstream.io/api/packages/cmrgv7hjf000104lheizgj686/download"
      sha256 "08f6d1026c51759d999de3bb8dc7d97096d0fd9740cab95aef264986037ba6ef"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrgv7q1j000f04jionsiez1y/download"
      sha256 "4d9c69edc053e5c09fe74fd4386947de95c6507b5a047113fbe579bfdaf8465f"
    else
      url "https://rstream.io/api/packages/cmrgv7tg1000l04jiy58var4t/download"
      sha256 "ea52958e65fdca525fb1bc5307cb8a71bfe937b860637e611fe907d6aa715d2e"
    end
  end
  def install
    bin.install "rstream"
  end
end

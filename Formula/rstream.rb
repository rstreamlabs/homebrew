class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.24.2"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrhvwx8u000004l77zb5dtrb/download"
      sha256 "ec497b10b4190cc0e5d6692cd81953bfbaef409be9aa6cb6ecd36ecf798dcf89"
    else
      url "https://rstream.io/api/packages/cmrhvwz0y000204l7ghuof4w7/download"
      sha256 "fa49f32b6dc0f57723012a1ba17a9ff57d09ba0bb1304f4a493b0d78dd708d3f"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmrhvx7bj000g04l7hvaslgki/download"
      sha256 "9d90bd11ed7c36c17733d9542fd1bfe96c1ce0e4d4565a96fa5efd3ca8c42e36"
    else
      url "https://rstream.io/api/packages/cmrhvxd0a000o04l765cft191/download"
      sha256 "f451fec815af3e72d0a088622796cebb567f9ecd99ff67d916e932669022bdf4"
    end
  end
  def install
    bin.install "rstream"
  end
end

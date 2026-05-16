class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.15.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmp8n6x0y000004kyonr9598t/download"
      sha256 "786be8d7d89303208c0a7a0d0937ab44c542c7a8f7d42e4059f42481088b2c01"
    else
      url "https://rstream.io/api/packages/cmp8n73tz000404ky1egn031n/download"
      sha256 "28ac9b30b99855d21001eec2973b68033c22a93deff0ad95e91c5305af462aa3"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmp8n7jod000i04ky0sn1hvrn/download"
      sha256 "b119ed6567ca676cf0c83222541dab38a78450ba5a4ae32c7ceb9a014d68dc18"
    else
      url "https://rstream.io/api/packages/cmp8n7qbm000604l7f3v4knsh/download"
      sha256 "22daf0985f7bca3c1203f9d0fc40369602024cab2da5de72749f8d87f0c1274e"
    end
  end
  def install
    bin.install "rstream"
  end
end

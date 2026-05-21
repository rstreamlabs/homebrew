class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.16.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpfnrvtg000704l2xq8d6zsg/download"
      sha256 "c6573871a50ac88ee049d3b72b460b362c1c2ef83048460265e2fa630cb5a0d5"
    else
      url "https://rstream.io/api/packages/cmpfnry6y000a04l2kllrdvxi/download"
      sha256 "bc07cc0a3ce9d42b23619b4b9638cab57dc4359385f5b670cb386a23464f1ba1"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpfns64f000h04l2i26l6pvg/download"
      sha256 "cd92f299b912518720ec6f31ca4ce205bdd69d168a86eb6c69af52cb75659068"
    else
      url "https://rstream.io/api/packages/cmpfns9nz000l04l24kkzs6yq/download"
      sha256 "d0f29c15652eca4b452bd6a9695bd4354d1af952dbc7114253fee7ade0c36e50"
    end
  end
  def install
    bin.install "rstream"
  end
end

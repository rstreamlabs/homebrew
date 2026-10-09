class Rstream < Formula
  desc "Secure outbound-only tunnels for private service connectivity"
  homepage "https://rstream.io"
  version "1.33.0"
  license "Apache-2.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv16i345000t06l2hjvjh8qx/download"
      sha256 "a34bb4605872819094efc53d608a58ffe06b88a6ae413db629fdc608e5aa0051"
    else
      url "https://rstream.io/api/packages/cmv16hxz9000s06l2f3x2s6gi/download"
      sha256 "e915fdef1df35caa40bb560d9bc259435248944e82ff465871b6a7110a1194d1"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmv16h3v5000m06l2z1ar6q0b/download"
      sha256 "e362fb30c92c1670bc9e4650e842d88a98c976f47a36b2af889d624857359f6c"
    else
      url "https://rstream.io/api/packages/cmv16ffh3000a06l23vmzshf9/download"
      sha256 "65c7a4ce63b3b7839eb263a2301bd1dd74477e78f059ca0aaa7e4f2a60e42317"
    end
  end
  def install
    bin.install "rstream"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rstream --version")
  end
end

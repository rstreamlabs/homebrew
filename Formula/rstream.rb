class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.21.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpx4qq7m000004iie4c7fnv8/download"
      sha256 "d0299b31ec080c915c574ab553e77d4547b8edea2f4e0bb1624debd32fd9a8ae"
    else
      url "https://rstream.io/api/packages/cmpx4qsu7000204lgvo3s1edj/download"
      sha256 "60f1bab7c9dc546664976410ae2b50b62ce5668ef3eb2a2311a2d4257b9f5f80"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpx63kzy000504jydf48uo0w/download"
      sha256 "d5156043b25b632490bb426f4a92df7c9fecfd52e5c8eb45e0150e947f624b3b"
    else
      url "https://rstream.io/api/packages/cmpx63q7q000d04jyo2lhvu5j/download"
      sha256 "44fc779d19dd4798fdcf85f48d7c7dce998881ba87ca467fc1f49beb2f4c5720"
    end
  end
  def install
    bin.install "rstream"
  end
end

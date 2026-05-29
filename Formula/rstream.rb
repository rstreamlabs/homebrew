class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.19.0"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpr4m8eb000004jxbxuhplnv/download"
      sha256 "d13faa657a05c1f0ef2b4caa441035ceb39f471e84741b2a25219e4855b7eef8"
    else
      url "https://rstream.io/api/packages/cmpr4mbbn000204jv0fb7x9q3/download"
      sha256 "cbdb93292abc6d847c235b522ae7843e7b802fe8581d72e7625f458016e33c15"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmpr4mhwq000504jxwy4fz31x/download"
      sha256 "6097fea5f3a32a38d88eb80288375ca701236b87b1d78f5f0201e33dece8c55d"
    else
      url "https://rstream.io/api/packages/cmpr4mmm9000d04jxeydegzdh/download"
      sha256 "2e8b4c280a26e4d7d70d4f8d098f21ab3da4b516bc4d6f3aba02bb11cd3ac6d9"
    end
  end
  def install
    bin.install "rstream"
  end
end

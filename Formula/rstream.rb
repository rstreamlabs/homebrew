class Rstream < Formula
  desc "Serverless networking."
  homepage "https://rstream.io"
  version "1.7.1"
  on_macos do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmmmjdak6000004jrfgybghyd/download"
      sha256 "c8a7a3c354dd53912bf4e06db9419f9f5f32d2e7a20fd99ba48851ef37767f7c"
    else
      url "https://rstream.io/api/packages/cmmmjd8fv000104joc06rlfhv/download"
      sha256 "d5d1b1b521110e073a201d5f47606af34729292a3223cb628fad515d0bc58c0b"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://rstream.io/api/packages/cmmmjdb0e000c04jozwiuvll7/download"
      sha256 "5d37cae05e0420a85039fbbcba4f185cf821f371ac0dbbb0524dd5feb7a650c7"
    else
      url "https://rstream.io/api/packages/cmmmjdc0b000204kwelxvv135/download"
      sha256 "a232979c6ed1772a57cc615a925674e4e0cf0cec7b005f253499d72bf28ceee6"
    end
  end
  def install
    bin.install "rstream"
  end
end

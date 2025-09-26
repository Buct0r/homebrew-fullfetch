class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "2.1.3"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.3/fullfetch_Darwin_arm64.tar.gz"
      sha256 "A5C11B90408871580A047C8AB9571A0251F27B3185C0A471A198BB8C6D68A8A7"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.3/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "2F6912D23964DC4B8CF0A0B6D41733E2C70E30B84C518392E557B0C8C147AD57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.3/fullfetch_Linux_arm64.tar.gz"
      sha256 "A06F1F3762DB44AFEFB1482A6EBA9BE25633E49B84CA70DFD70AB1E536D0A09C"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.3/fullfetch_Linux_x86_64.tar.gz"
      sha256 "7637DC704B01F80AD2B7A565EC66CF8BA6C87DBBE2B4A8C01DBE81A4B276744D"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end
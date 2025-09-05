class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "2.1.1"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.1/fullfetch_Darwin_arm64.tar.gz"
      sha256 "3A43C6DCC7E22736F6AB376783067347AB7251E7B81CB291C70AB45CC022D1E5"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.1/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "17AD84D0DFE35B4390E3C1AEDD23FC99DBDF475D00F8A298BF7E1DC1BAC16E02"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end
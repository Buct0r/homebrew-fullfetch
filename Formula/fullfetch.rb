class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "2.1.2"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.2/fullfetch_Darwin_arm64.tar.gz"
      sha256 "CAAF46DC6D421045E5E87CC99DDB6C243D88FD77D6579A735724FFC44F0C1810"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.2/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "057179F2C8CFB9B24C484C28DAEBADC8F4CB6A2BE8D4D22554450C7825E43009"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.2/fullfetch_Linux_arm64.tar.gz"
      sha256 "8C879754DDCC77687404E60C9BA7058DC5FF7FE65C20A3AA7AA73F89179CB3C5"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.2/fullfetch_Linux_x86_64.tar.gz"
      sha256 "5921B07798A3517B861C7E93C3A0159593348DFD4B4225F7F592D8788595AE7B"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end
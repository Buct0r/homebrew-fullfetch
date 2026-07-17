class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "v3.1.0"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.1.0/fullfetch_Darwin_arm64.tar.gz"
      sha256 "657fc7bfaf4f5590b559bcb90d46858ec59ffbad7453b9a87f3181b781dca152"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.1.0/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "708a2ef99e928ebc170fe2adfcb27c06855b1f06a9eea86e31c1fed415453b2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.1.0/fullfetch_Linux_arm64.tar.gz"
      sha256 "15ed2b1f922f74c3732664a6d70c8ede5a79e33ed482d8230ce264dc5aec0fbe"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.1.0/fullfetch_Linux_x86_64.tar.gz"
      sha256 "b2cc83c14d83d05d23f9579877a7a7f22e625c8e9cb7cd060219a37c2cd862b4"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end

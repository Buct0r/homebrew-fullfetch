class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "2.1.4"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.4/fullfetch_Darwin_arm64.tar.gz"
      sha256 "289A6EB2E9C94585983AA60BD75ABA87C94D56AD767F9A7B19BFEDD026A75972"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.4/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "ACDC48B52DD84458AA7E84441568D2F87EF23883A085B4BC08C7C951EDAE3BD9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.4/fullfetch_Linux_arm64.tar.gz"
      sha256 "6178C63E25E03A8617336B3F641DFA0DA2DDD176C085612EAA113732C9D46F6D"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.4/fullfetch_Linux_x86_64.tar.gz"
      sha256 "3A1D1F35F279FE2068E00FF8B40666BA72F1292A18FFADCEBBCEEDE76D07CA58"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end
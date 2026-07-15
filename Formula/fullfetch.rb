class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "v3.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.0.0/fullfetch_Darwin_arm64.tar.gz"
      sha256 "781ab13cd4dac5c7f0a7d7a8b98ff60136c7becc18fc447447e454d366dda086"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.0.0/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "4890d53362afe3efb0a33678289cf51f2c5f971d177d24ca7b81a080673138f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.0.0/fullfetch_Linux_arm64.tar.gz"
      sha256 "3a53496e7bc796b803c2ffa084b17119b715861165b5bf62d154fb0c9c636278"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.0.0/fullfetch_Linux_x86_64.tar.gz"
      sha256 "d75995106ab7221310099c7ee79c98c444cb3c823177dc6f853968a86e46aa09"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end

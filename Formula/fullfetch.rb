class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "v3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.2.0/fullfetch_Darwin_arm64.tar.gz"
      sha256 "e2ba8d91383694409f46ed57a2ae8f3a9eb00e885e94c4b0a043e3e5ec394fe3"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.2.0/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "3848338c5c6412178087b8a85788b154c8f9220dd78b631919ab9d03e71be1e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.2.0/fullfetch_Linux_arm64.tar.gz"
      sha256 "52c2f685ffd4294202457987024adcfb0343288b756ea1423e24fe624709546e"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v3.2.0/fullfetch_Linux_x86_64.tar.gz"
      sha256 "e64a36335dd1ab4db580a3492abfdfc49fcef97f981dc20fd5a8c20f83830f51"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end

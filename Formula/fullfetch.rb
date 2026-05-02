class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "v2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.2.0/fullfetch_Darwin_arm64.tar.gz"
      sha256 "d9a1837d1c77bfd3e38ba2f98aaecb3065aba7d8f4f3709019058d4b5d3bd42f"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.2.0/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "bed838f36ca61242b532cae89b4c156ec07ffbfa16d761d6462b7f2b9c7532c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.2.0/fullfetch_Linux_arm64.tar.gz"
      sha256 "d6deeb2237b6b0c441632bfa4a623ee1586daa10ab29c6dfb90bda3caedc085e"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.2.0/fullfetch_Linux_x86_64.tar.gz"
      sha256 "091cfcbf672421a38aa3f0cd581c926fbe930d8d280d577003bd3bc9d063ba97"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end

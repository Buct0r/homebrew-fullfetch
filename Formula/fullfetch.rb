class Fullfetch < Formula
  desc "A CLI tool to fetch and display system information written in Go"
  homepage "https://github.com/Buct0r/fullfetch"
  license "MIT"
  
  version "2.1.5"

  on_macos do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.5/fullfetch_Darwin_arm64.tar.gz"
      sha256 "720D5E3B43D90EE4DA95088B809F1C09823D925C676078D420A383139D44D3CA"
    end

    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.5/fullfetch_Darwin_x86_64.tar.gz"
      sha256 "C085C0048D1BDE2ACAFEC0CDDA1E96C45DC02E6A5B4441DDB02CE8CF9A9A3BB8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.5/fullfetch_Linux_arm64.tar.gz"
      sha256 "9760DFC942646E20F0641F3EF7C606977242FE8E2DC21E5F1762BFEF58C9D808"
    end
    on_intel do
      url "https://github.com/Buct0r/fullfetch/releases/download/v2.1.5/fullfetch_Linux_x86_64.tar.gz"
      sha256 "EACD2C34E8949386D032FFDA459C9857C6E6D4A8C902450D9A41F1A7A0ABBA2B"
    end
  end


  def install
    bin.install "fullfetch"
  end

  test do
    system "#{bin}/fullfetch", "--version"
  end
end
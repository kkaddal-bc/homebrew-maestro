class Maestro < Formula
  desc "Maestro CLI for installing and managing skills"
  homepage "https://github.com/kkaddal-bc/maestro"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.3.0/maestro-darwin-arm64.tar.gz"
      sha256 "d1a55e03220aaf176e18e506911256fcc6faf1fd46f123c3c34328bc1370e3a4"
    end

    on_intel do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.3.0/maestro-darwin-amd64.tar.gz"
      sha256 "69bb2f1f4668d1d128feba0c71cef4296a8bba9a6da59c1909b6a027359a73a1"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    system "#{bin}/maestro", "--help"
  end
end

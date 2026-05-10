class Maestro < Formula
  desc "Maestro CLI for installing and managing skills"
  homepage "https://github.com/kkaddal-bc/maestro"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.1.2/maestro-darwin-arm64.tar.gz"
      sha256 "93193c1f758828e08f3ddad96dad38b640bff1a990211aa4ae7dcf5f881a5c92"
    end

    on_intel do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.1.2/maestro-darwin-amd64.tar.gz"
      sha256 "f81db4c0698b32cfaf6b8ace5bb7857fb64838f81c50aab85bf47b3061b4b4af"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    system "#{bin}/maestro", "--help"
  end
end

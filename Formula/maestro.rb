class Maestro < Formula
  desc "Maestro CLI for installing and managing skills"
  homepage "https://github.com/kkaddal-bc/maestro"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.2.1/maestro-darwin-arm64.tar.gz"
      sha256 "a30b5391ba26fff5558db51226aa7ba2a079b33e0c1141c5210f0bd42a3dd20d"
    end

    on_intel do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.2.1/maestro-darwin-amd64.tar.gz"
      sha256 "9b3b7262415fdeb7fad32afa042e32d5ef4aa72b4877f1d96355d044ccd1366c"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    system "#{bin}/maestro", "--help"
  end
end

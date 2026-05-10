class Maestro < Formula
  desc "Maestro CLI for installing and managing skills"
  homepage "https://github.com/kkaddal-bc/maestro"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.4.0/maestro-darwin-arm64.tar.gz"
      sha256 "db797cc17e6e106e4c15448ec6248c76cbba889b5cea5faa060ddabfd9cbeff5"
    end

    on_intel do
      url "https://github.com/kkaddal-bc/maestro/releases/download/v0.4.0/maestro-darwin-amd64.tar.gz"
      sha256 "de03da8d70cc48002190501a4d6ac00801390b36d6e98895bf24199e92f4d937"
    end
  end

  def install
    bin.install "maestro"
  end

  test do
    system "#{bin}/maestro", "--help"
  end
end

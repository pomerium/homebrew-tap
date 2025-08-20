class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.5/pomerium-darwin-amd64.tar.gz"
      sha256 "786543ce5d122830fdafa60925961690f8f9c5eb1c8196a6b1c932e7a039b433"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.5/pomerium-darwin-arm64.tar.gz"
      sha256 "8a639203712c563973e6b297bc1b3f0450c0ed5348efed86e2f935c6ca758444"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.5/pomerium-linux-arm64.tar.gz"
      sha256 "0fda13fb24e2928b404df7124cba7a9a12aca51243e468be625cb245f5e3bbb3"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.5/pomerium-linux-amd64.tar.gz"
      sha256 "12d92bd9ae0c79b3c6fa5c7317bf9d751dc3d8c0960d2d377e1eb3d6983a863b"

      def install
        bin.install "pomerium"
      end
    end
  end
end

class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.0/pomerium-darwin-amd64.tar.gz"
      sha256 "c9b41dd68d817e6b8d3c4cdc135b68bfc221bfe70ffda5a877fddbd13cde58c6"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.0/pomerium-darwin-arm64.tar.gz"
      sha256 "8666b24e5a53966bbfa6eed2d09567185105b5ed9c33fcdd46e53bbb42977d68"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.0/pomerium-linux-arm64.tar.gz"
      sha256 "a8f411fcfa555894349786118eb680fe7393df3c868d33e9dda507188c1dc9f9"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.0/pomerium-linux-amd64.tar.gz"
      sha256 "c437e2258692d51064bd8d2577c0eb1112b4e975b4b9c07a9bdf8837a3ae4532"

      def install
        bin.install "pomerium"
      end
    end
  end
end

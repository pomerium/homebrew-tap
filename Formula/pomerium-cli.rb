class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.1-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.1-rc.1/pomerium-cli-darwin-amd64.zip"
      sha256 "3914042c19f2b1532d49f2057b22e655cf2529af0782983ecf349902a9ea9165"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.32.1-rc.1/pomerium-cli-darwin-arm64.zip"
      sha256 "2e47de7215f7dbcb05e1683fcdc45ff6580c4b87953e4c6b0c03a26475f2fbb2"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.1-rc.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "f1a11e4100047d8faa2e47047db13e0c1b2518d6829d611f6598eac84905aca2"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.1-rc.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "42d6477d0b4515d1ce829ce6ae1d30987f33001206f21d05f3574b9c35a9af1a"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.1-rc.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "378d08cf4d7bf3f347f15c8ac6f478dadb7eb29497d31e1176af542b529188f9"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

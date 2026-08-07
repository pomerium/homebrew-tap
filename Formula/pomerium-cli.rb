class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.33.1/pomerium-cli-darwin-amd64.zip"
      sha256 "645ae0ce8f82e95fa17abb2c034a4a1a47d1fe309f08596b25f644ab42f5b1a2"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.33.1/pomerium-cli-darwin-arm64.zip"
      sha256 "ffd3ba0b9719779878f110bba4733968164cf189a141988744e7d6c2e8364625"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.33.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "13b87fe1a138cb4adae6497ca9101d3e6c5eab9cbd7f7f2db6a0a8f065de2fab"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.33.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "36e3de7265a4749f352f99ef0dd5fad8c737d9b4c6a8d22a2030544460e44e1f"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.33.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "6381c55e7393b9f30fce8ebf48a1ca5c3d2c28ce110ff87fde5416cf171c8d7f"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

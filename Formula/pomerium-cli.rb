class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.29.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.29.1/pomerium-cli-darwin-amd64.tar.gz"
      sha256 "339c6a96f1809585ee815bb38629dec4541498c1a4771e05fa1f0a5309f7004b"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.29.1/pomerium-cli-darwin-arm64.tar.gz"
      sha256 "2dc649544b2f4a96fbcf2f60015bb40d554b601d174c90395d39a2117f831386"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.29.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "aa3e3a71a4353e96820bce17d58922809d8ba9ac4293b2d7382ed48ace854921"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.29.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "9336aa614c0806403a768706cb3431347f4ebe66aae0cb9ade7edc0a58491827"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.29.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "c8ef3670f18fe28c40872f9006ffb9d798428de7ca6d620a40a66cbebe21005c"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

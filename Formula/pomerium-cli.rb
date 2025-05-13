class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.0.1/pomerium-cli-darwin-amd64.tar.gz"
      sha256 "fb629ad315c4fa46d28058718fdad304dfdf9431a31ccd8283e35654ec1b76bb"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.0.1/pomerium-cli-darwin-arm64.tar.gz"
      sha256 "eb58a12d66f67a25670ffd8314eca9fe9c8582e66a4eca6a50cb201a3f26da8a"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.0.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "9cc6b7cb43b8b2d041a8aa21cc225f28611bfa9e7e392121bc2917459d5324e3"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.0.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "6757cf43f1dd7bf5d725ad90d143eb29b0e262a7e0963c14c6c0f1b7abfbc127"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.0.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "04de26c0688e562d2ef77e73880b17ddab90fb121697c3614a71e063c80a6dfd"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.2/pomerium-cli-darwin-amd64.zip"
      sha256 "3440b1a98db648292bf3cffab10850c2ee724a328d5fe520ce6f61813d7cb27f"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.32.2/pomerium-cli-darwin-arm64.zip"
      sha256 "83140cab47cb8fbd0fd911d0d94a9d3ef9fc90ad506381aa84a1f298c0503f11"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.2/pomerium-cli-linux-armv6.tar.gz"
      sha256 "dfea0483a47720139321886ed117f743801742c6c4c25782ddbe7aebe8e225d0"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.2/pomerium-cli-linux-arm64.tar.gz"
      sha256 "4af2532fc0a227a4547fdf81db1a2734b606fe1e11281729d359e234d47bb254"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.2/pomerium-cli-linux-amd64.tar.gz"
      sha256 "af40d1a73daa7fdca44c88add8a407014b36dc939588422e973998684dd88014"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

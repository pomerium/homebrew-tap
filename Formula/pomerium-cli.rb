class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.0/pomerium-cli-darwin-amd64.zip"
      sha256 "998375151b3bdfedf738fdde70439416ac8c03211a24c724306d4a918162ba15"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.32.0/pomerium-cli-darwin-arm64.zip"
      sha256 "9b833211139796eb70e1307a6cbf8d40123c93970f897cbf22243393cbf47536"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.0/pomerium-cli-linux-armv6.tar.gz"
      sha256 "5f66cf6bf4635d8b09d3951065bd87bc84ee4c0b8fbb5d76d1e00caafa9737a6"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.32.0/pomerium-cli-linux-arm64.tar.gz"
      sha256 "f93f30991fb3b2268af90f22c2c2b0a44d2f231c02f928c665613b293561b298"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.32.0/pomerium-cli-linux-amd64.tar.gz"
      sha256 "9ac6402c2cca475be21d0e19e21c92bef0f2a4de6b56c18dac8bead79542cf68"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

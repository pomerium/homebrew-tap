class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.3/pomerium-darwin-amd64.tar.gz"
      sha256 "3791d5911f73aa6124499e99afc1654c1415e1cd39163b3a757e8fb55a805a7c"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.3/pomerium-darwin-arm64.tar.gz"
      sha256 "144243bb38e3ceeddc8da53dd5866d950f4352c9611e8db22a0ff85e22222417"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.3/pomerium-linux-arm64.tar.gz"
      sha256 "9e855fb9ba651691dd284af359269e33f213e8f325b5ab1f04d56fe42f551741"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.3/pomerium-linux-amd64.tar.gz"
      sha256 "5cbde370685ee9b6ca9030c8119b3448615c7550a787b2ef5368e22d681cdc5f"

      def install
        bin.install "pomerium"
      end
    end
  end
end

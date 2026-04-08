class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.5/pomerium-darwin-amd64.tar.gz"
      sha256 "b74a76707bc4bdaa33527b42ab475934e42665645baaec09fa673ec833025a35"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.5/pomerium-darwin-arm64.tar.gz"
      sha256 "4cb4fe074676141b4df645f2e81e4b3cfdda51cb4f102f1408395096ad60dcb0"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.5/pomerium-linux-arm64.tar.gz"
      sha256 "4e1bbd19368b2650e379417441b99bab976480483c5c4c94f9b9ff1e79085894"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.5/pomerium-linux-amd64.tar.gz"
      sha256 "1025368710a75ce8b3e2d5fc8d5e20e93ce166f0df0611fbdf24b08d8e9887b7"

      def install
        bin.install "pomerium"
      end
    end
  end
end

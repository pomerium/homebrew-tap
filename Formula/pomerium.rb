class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.8/pomerium-darwin-amd64.tar.gz"
      sha256 "f613a515d5d80af896866a1fac96c43bc5061e8ef11a8f59c1263468afd5c644"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.8/pomerium-darwin-arm64.tar.gz"
      sha256 "8529769cadc567dc308f3c0aa4e3dd1c1a30bf9434fb353534d0df32bdb8aa98"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.8/pomerium-linux-arm64.tar.gz"
      sha256 "f97889fa2481ea0209178619a7a2d40390b6c021cbc701b3457253232c1d863e"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.8/pomerium-linux-amd64.tar.gz"
      sha256 "34875c1bda2a04b9d42b6594e14b943140ab2f01a866f12cba53ee79bad97c9a"

      def install
        bin.install "pomerium"
      end
    end
  end
end

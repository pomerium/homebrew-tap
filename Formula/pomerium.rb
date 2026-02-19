class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.2/pomerium-darwin-amd64.tar.gz"
      sha256 "158ae2d05741b4d94f34b828f702dc762ce26bf4872115734a657bc7a4371a3e"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.2/pomerium-darwin-arm64.tar.gz"
      sha256 "15d3e698c81e9dac868f8956bb117eacd3b3b594944a457b7cbed56a16e5ce64"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.2/pomerium-linux-arm64.tar.gz"
      sha256 "33e43759e2e8d794fda50b8ec2cbbe8ec0b15f91a70c66589f77c9c656ce9cbf"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.2/pomerium-linux-amd64.tar.gz"
      sha256 "79de63e3f7ab598f0b2da64fe091a7167d2fec0dbf537319a175596c5c8d2875"

      def install
        bin.install "pomerium"
      end
    end
  end
end

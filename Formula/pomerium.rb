class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.9/pomerium-darwin-amd64.tar.gz"
      sha256 "ecdc0841fd7dfd23e1b9de14febe2cdd889d9868accaef454bd7dd0be71a113d"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.9/pomerium-darwin-arm64.tar.gz"
      sha256 "5e6ee156aca8d1ebe1addc54796f206b87242734a1f7447198d5610ae63829b2"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.9/pomerium-linux-arm64.tar.gz"
      sha256 "8fdb7c24f649d1c16e5df57aa88603e7e4f1d5eb1c796163c609f10a89501ebd"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.9/pomerium-linux-amd64.tar.gz"
      sha256 "a01e441a35f4bd003be89e5a861b9a9887a05c56ad0c914a6456d5cac54b0910"

      def install
        bin.install "pomerium"
      end
    end
  end
end

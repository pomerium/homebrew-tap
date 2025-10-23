class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.1/pomerium-darwin-amd64.tar.gz"
      sha256 "63788f4ae50ee5953f98f404bfcb570d3f0d752804b22979a3f78fce52256369"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.1/pomerium-darwin-arm64.tar.gz"
      sha256 "7ef9cbbfe24686d60b7b3d54c3f4aa3ca5c110979174f2653a23dfded6d08fdb"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.1/pomerium-linux-arm64.tar.gz"
      sha256 "80c64eef9641c6dbc958064b2ced727c8c38ed27df7f26050818ad3e43db03c4"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.1/pomerium-linux-amd64.tar.gz"
      sha256 "9827723331c9231f1523cb3ea38ef2a0d86ae69eade30ea071de26ce46d206d4"

      def install
        bin.install "pomerium"
      end
    end
  end
end

class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.31.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.0/pomerium-darwin-amd64.tar.gz"
      sha256 "83c21e3ccadf3687cdabf06bcd5ca625b37459acf3596bed6f8a78c5db00f932"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.0/pomerium-darwin-arm64.tar.gz"
      sha256 "3c07f9e2f1554985394ca5ac00a520faca7f2fa904a6438614d74e102bf6c931"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.0/pomerium-linux-arm64.tar.gz"
      sha256 "71342aca2ade6a2783aee3aacccd664d436ec77bfa14c9f619d4344f7021bdf6"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.0/pomerium-linux-amd64.tar.gz"
      sha256 "272d0297094aa1957a08d08d78cb57dec596b739190c01f12d3d2307828888b4"

      def install
        bin.install "pomerium"
      end
    end
  end
end

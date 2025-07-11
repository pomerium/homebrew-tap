class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.1/pomerium-darwin-amd64.tar.gz"
      sha256 "d1fba9676ee155eee47e2a2d2ccddfc434f94fd7b2c0ce84f23d5e8b9f959889"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.1/pomerium-darwin-arm64.tar.gz"
      sha256 "4888e31950f97d86417e0784fb9f07c16a41fa6cef6aef133422ca3e88a39de8"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.1/pomerium-linux-arm64.tar.gz"
      sha256 "8ff396c205938d2f7beca95390f6c53f88954b7ab189ff495512b24a2bd7d62a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.1/pomerium-linux-amd64.tar.gz"
      sha256 "5be71ae7e5fbc7e3adadc72fdb40562f87371fb60130ce7650332c36b216841c"

      def install
        bin.install "pomerium"
      end
    end
  end
end

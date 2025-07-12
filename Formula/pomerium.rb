class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.2/pomerium-darwin-amd64.tar.gz"
      sha256 "ce019b803a7515d9c7ef3f4f8c36cd6f94d1f42686b85fcfd8bd50aeea459a73"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.2/pomerium-darwin-arm64.tar.gz"
      sha256 "3f4a3af4d6f9258b6119c5b80cbb7689392dbca51ae6914df0d2960a3282dd9f"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.2/pomerium-linux-arm64.tar.gz"
      sha256 "f570ae27620b6543939872082a05a847b50be169094eaffa4217579a458c7b48"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.2/pomerium-linux-amd64.tar.gz"
      sha256 "2b5f6ef2fab407876c68af3e0bd414229e6b7a8987d171cf1f9ba49e3be68b2b"

      def install
        bin.install "pomerium"
      end
    end
  end
end

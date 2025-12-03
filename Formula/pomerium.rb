class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.31.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.2/pomerium-darwin-amd64.tar.gz"
      sha256 "395862ec723147ebe922e8b56a32b0e781a915fa26b62c6bdea233f92d29c575"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.2/pomerium-darwin-arm64.tar.gz"
      sha256 "d268883cc3f6c4b90557ace298c9a600d640d39339cb510a5658dfecf820cc08"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.2/pomerium-linux-arm64.tar.gz"
      sha256 "efaef472a01aa6da3963bf4d5b4238f41c166e56dde37af70c14b0a7ae7da3d1"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.2/pomerium-linux-amd64.tar.gz"
      sha256 "3bc8a912124714fda8b9f5188ea73f18db11f1d5ed9be597d96efbb7a416ef94"

      def install
        bin.install "pomerium"
      end
    end
  end
end

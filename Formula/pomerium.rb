class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.4/pomerium-darwin-amd64.tar.gz"
      sha256 "fa1312a9c3d9afeb721c1cbdf271dd4123ea0ce5e3818b42414d39808236be7a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.4/pomerium-darwin-arm64.tar.gz"
      sha256 "a153a9f7d6f4f0cc13865400f17bff3cfb55c475d76cd0623ce6f4b1bf4caabd"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.4/pomerium-linux-arm64.tar.gz"
      sha256 "1a589dfdd0be8deed47a232a11298c97ba45d8ede8a04b5e36dea3310de18f66"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.4/pomerium-linux-amd64.tar.gz"
      sha256 "768d9afeceeb4b732508733f43308fc27dccf78ea2096a38241dc5a202d5abf3"

      def install
        bin.install "pomerium"
      end
    end
  end
end

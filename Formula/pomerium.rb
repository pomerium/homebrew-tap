class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.7/pomerium-darwin-amd64.tar.gz"
      sha256 "321abe2919563cbd61ffb4f5535d80bf3fd47d89028b50982fbf960f8bdc08b6"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.7/pomerium-darwin-arm64.tar.gz"
      sha256 "9ba94a7616930e66df6a0ac50246cf250f040d084a82318ce2ea26a8e8ba37ca"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.7/pomerium-linux-arm64.tar.gz"
      sha256 "dda1c975bfcdce6053382602c06f26d55adfd1e1ab0360239e480e4901006622"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.7/pomerium-linux-amd64.tar.gz"
      sha256 "f6d4778fb62216e7600e829f99823ea332a02f97292559e054f9dca87c7c86f1"

      def install
        bin.install "pomerium"
      end
    end
  end
end

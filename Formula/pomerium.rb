class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.6/pomerium-darwin-amd64.tar.gz"
      sha256 "8eeb09d6f758ae7c1d9944083900749bd9a8784ca1e92dff42d5d6ae733804af"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.6/pomerium-darwin-arm64.tar.gz"
      sha256 "80768883e81374492cbd46e0dd51891d20ad7e0523e4da2cc5a437fb24f3beee"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.6/pomerium-linux-arm64.tar.gz"
      sha256 "a2b5048bd17877d11ae61e26f5bc8ce2402543e2aa93a7cdc649d06a35f3bd72"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.6/pomerium-linux-amd64.tar.gz"
      sha256 "b7cb00d03be3d31e420febdf185268dac1a94cb6b915328591a664a51cc5c60a"

      def install
        bin.install "pomerium"
      end
    end
  end
end

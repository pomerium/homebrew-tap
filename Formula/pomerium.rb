class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.0/pomerium-darwin-amd64.tar.gz"
      sha256 "336ff35d8ca0050a8f39acec6d03c0e41d302042efd8360e2e8a3cd83ba3ff1f"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.0/pomerium-linux-arm64.tar.gz"
      sha256 "36a4c73622a3cf13215f92f143f9b0d6a4f287e9bb4aa79ec005a8747260a86a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.0/pomerium-linux-amd64.tar.gz"
      sha256 "29167e7c3614cc1d1ab37eafca2e0e2989249111abf29b9c4e1f23ce3795462d"

      def install
        bin.install "pomerium"
      end
    end
  end
end

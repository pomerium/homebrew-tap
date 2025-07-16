class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.3/pomerium-darwin-amd64.tar.gz"
      sha256 "921a3e3bd69a518a914093dbd8c79eb87297ce5371e6987b4446209934214aa3"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.3/pomerium-darwin-arm64.tar.gz"
      sha256 "4d7ecad81d1f53b362389519c201d3a83d56ec4f8c2a38c333d59b2204a94bd0"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.3/pomerium-linux-arm64.tar.gz"
      sha256 "ce4497b2600adfee26fa4a5b1ae9f499d94d03c2cadec1602fb3445e5a24905a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.3/pomerium-linux-amd64.tar.gz"
      sha256 "983f45a8e5b35a560b5846064d62c6086a7296f7c0c36887e83fce0d30c096be"

      def install
        bin.install "pomerium"
      end
    end
  end
end

class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.8/pomerium-darwin-amd64.tar.gz"
      sha256 "23a6fe5bbbd9841f15d42c15e849d872830d776eb40c0cfa25507f56c2bb78ce"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.8/pomerium-darwin-arm64.tar.gz"
      sha256 "e0e85acd20feadf6f608a2e346faee8aadb8e4103e686615c7e41ebda54a029e"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.8/pomerium-linux-arm64.tar.gz"
      sha256 "78e6307a8e16539abdbdc925e4633dc6acdfe315391288524dc9ef5344b07671"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.8/pomerium-linux-amd64.tar.gz"
      sha256 "4e5f283afe9655a2e52e2472376578ae2fd7ad30bc5ca106f8897ceab78ed7ba"

      def install
        bin.install "pomerium"
      end
    end
  end
end

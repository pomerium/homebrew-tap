class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.32.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.6/pomerium-darwin-amd64.tar.gz"
      sha256 "b82287066fecc49cd9a29f281df34b73876368e5f3c8389e8a873a3bb0b8b11f"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.6/pomerium-darwin-arm64.tar.gz"
      sha256 "ff8f834ba6f1bab0fc682980a7115b97fa0fb604e050f38eae479d4f4704a567"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.6/pomerium-linux-arm64.tar.gz"
      sha256 "9d813f2417b6c71c55f91cf964b47ed8a52027bc95d6e540f202241fb895f4da"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.32.6/pomerium-linux-amd64.tar.gz"
      sha256 "817b4c13788800f1b3a79d4ad96aeb20ba97c55490690040dc9956150b8d1151"

      def install
        bin.install "pomerium"
      end
    end
  end
end

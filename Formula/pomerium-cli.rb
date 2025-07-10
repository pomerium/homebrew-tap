class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.30.1/pomerium-cli-darwin-amd64.zip"
      sha256 "3b24d88fd36fb9858a7a00aea2f11bbd3d8169017663751fd995ef88da97597d"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.30.1/pomerium-cli-darwin-arm64.zip"
      sha256 "f6cd764faf1e39713b4dc9cae19aa7f9e3022454bcac4db6e8962748a04405a3"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.30.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "539bf1c4f5a21487010ff6664fc401bb1c652d9baac2bca94829319ffe15ee8a"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.30.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "ec9186d118a982a13ce0536e34c0fd39008592689ccc46d5cc0f2b51bb09715e"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.30.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "ee95ad1bd86e01729311f01463c00072abf183d753ac91d4e85a982d3e60b5ff"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

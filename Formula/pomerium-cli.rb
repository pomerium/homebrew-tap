class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.31.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.31.0/pomerium-cli-darwin-amd64.zip"
      sha256 "3419a6b1b2e94a5caa239043b2f4a8a1b0a2e94b8fefa5ae338a56c1cc8bf528"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.31.0/pomerium-cli-darwin-arm64.zip"
      sha256 "4b165e0f7032975187d4a99544fbf0de25862ea66729ebf120a83029f6ccabaa"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.31.0/pomerium-cli-linux-armv6.tar.gz"
      sha256 "24591a97222a978116dc7c1eb9101e82956b086b50eff1e34e917959ff98fff0"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.31.0/pomerium-cli-linux-arm64.tar.gz"
      sha256 "341cf455e25f76fafe0f2d11cc2e8cc23361cceec37bccf454fa09ed2d8b9d1b"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.31.0/pomerium-cli-linux-amd64.tar.gz"
      sha256 "9f3b46882e6c4465ee1c6619a879a9ed7987a8bc03e3f6f65928081e9969f037"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

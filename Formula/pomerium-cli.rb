class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.34.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.34.1/pomerium-cli-darwin-amd64.zip"
      sha256 "6d6f62c3abd97940e71c5ef8abbc6f10cf69cff00a14ae14412579ff6016cf4f"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.34.1/pomerium-cli-darwin-arm64.zip"
      sha256 "9aa2dcd209345e318b27d7e3a126e1bb1a7e40052c77635bd478cce862ccd664"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.34.1/pomerium-cli-linux-armv6.tar.gz"
      sha256 "2a945ea697b59f4106bfd8a21683af77b60127958ac582a48a74834989be2e0f"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.34.1/pomerium-cli-linux-arm64.tar.gz"
      sha256 "3e0e4dfb69131ad35e430697f60c7335aa41a6cf7ea4d4bb139470e47d99f8dc"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.34.1/pomerium-cli-linux-amd64.tar.gz"
      sha256 "f9b7fae78f45388509b8829d578958719a549701a8aeb012f8ba56653a8047c0"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

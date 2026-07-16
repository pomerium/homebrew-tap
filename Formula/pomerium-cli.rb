class PomeriumCli < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.33.0/pomerium-cli-darwin-amd64.zip"
      sha256 "fc1e3dc229b3d9804b69649f305396a8f5c8fa9e12fcc9772180b2479f0c8c35"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/cli/releases/download/v0.33.0/pomerium-cli-darwin-arm64.zip"
      sha256 "4d6e7fc6c7f45d8f5c8622526d082851bb4e172d37a0e60673af89b0e99b428b"

      def install
        bin.install "pomerium-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.33.0/pomerium-cli-linux-armv6.tar.gz"
      sha256 "c88dc661d082a071aada138b269d98c0b128139499fc6fc3db9f415d4e77adb2"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/cli/releases/download/v0.33.0/pomerium-cli-linux-arm64.tar.gz"
      sha256 "0b1b859dac9bfa6e083064ba4c2e3cec74cacd4504319b1e1791474146e468a7"

      def install
        bin.install "pomerium-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/cli/releases/download/v0.33.0/pomerium-cli-linux-amd64.tar.gz"
      sha256 "b5e7a8061c1e3b7fbe31e947636c4d404d685750f95b7cbadd3c8e2db050d960"

      def install
        bin.install "pomerium-cli"
      end
    end
  end
end

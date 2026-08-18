class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.1"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.33.1/pomerium-darwin-arm64.tar.gz"
    sha256 "3e6198424f6373c99f734a2b008d66b49891a079dd1c57cf52e65fde80680379"

    def install
      bin.install "pomerium"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.1/pomerium-linux-arm64.tar.gz"
      sha256 "97ffbd1c1b9f74ca77210af6beff8a15f09f17e08c3c0941ddd2a7210e725d8f"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.1/pomerium-linux-amd64.tar.gz"
      sha256 "34a3506d5f21ce585f874b64a52e1d51d8e7383a4371aeb56d6aa41194f0362a"

      def install
        bin.install "pomerium"
      end
    end
  end
end

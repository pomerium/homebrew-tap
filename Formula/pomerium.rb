class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.0"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.33.0/pomerium-darwin-arm64.tar.gz"
    sha256 "7f3187caeaba894beae24e7458ab970d9704e3e5039f43eb16fca54db1c1ea06"

    def install
      bin.install "pomerium"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.0/pomerium-linux-arm64.tar.gz"
      sha256 "ed10702d3bc7a3c779f854ae1674c23393843d96ed44afd528df29e869f65643"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.0/pomerium-linux-amd64.tar.gz"
      sha256 "cd82cb1f9d68a8fc2689f41a640d67a4988336712b0bbbebaf06e1638549e96c"

      def install
        bin.install "pomerium"
      end
    end
  end
end

class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.31.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.3/pomerium-darwin-amd64.tar.gz"
      sha256 "548ce662363d04a22a1b2b98be56771cbab31a12b158c5c80759be5bfe9bdc41"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.3/pomerium-darwin-arm64.tar.gz"
      sha256 "85ef07f728341c6926c20ca4474cab49214d0e73de0e143d8341c859f2e6535d"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.3/pomerium-linux-arm64.tar.gz"
      sha256 "2d3f36de2cf727600afb8b68eac727fb5c8bab25c1ee83c9cbbc540f9457340a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.31.3/pomerium-linux-amd64.tar.gz"
      sha256 "a9745669397fdb2e5a4db58c08dc511acb607d269747d04fbc6995bf6b59583f"

      def install
        bin.install "pomerium"
      end
    end
  end
end

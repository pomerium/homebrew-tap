class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.4"
  license :cannot_represent

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.33.4/pomerium-darwin-arm64.tar.gz"
    sha256 "884c23e2903bc55c8eaa7615c3f10912ee8667985c3da9e1d04078df010fdf0e"

    def install
      bin.install "pomerium"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.4/pomerium-linux-arm64.tar.gz"
      sha256 "bfd59855cc1878ce4e90e66143d6f13997679c115eb4d63df751ddffd50d95a7"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.4/pomerium-linux-amd64.tar.gz"
      sha256 "bb792f52bc07226497c5be67a1373476d3fdbd40064e3a2d47ca65b05dfdd0df"

      def install
        bin.install "pomerium"
      end
    end
  end
end

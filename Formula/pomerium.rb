class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.30.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.4/pomerium-darwin-amd64.tar.gz"
      sha256 "6e0c42a7f91ce7e559bf50b69725dff6d18a052b177eb0532676b61cf2977cf7"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.4/pomerium-darwin-arm64.tar.gz"
      sha256 "e3dd6e1fe8452b7e4106cb5ad20e41adfa605ea61c8598beecf18c52f663284f"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.4/pomerium-linux-arm64.tar.gz"
      sha256 "1134b7ea51be4d221f9d2042985339d2cce838de7c07da5b1964211ec861897e"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.30.4/pomerium-linux-amd64.tar.gz"
      sha256 "9ff066657215a2be98fff161ae941e6b6d665f1e3b943fd1aa74356e4c1d15a6"

      def install
        bin.install "pomerium"
      end
    end
  end
end

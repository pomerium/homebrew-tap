class Pomerium < Formula
  desc "Identity Aware Proxy"
  homepage "https://www.pomerium.com"
  version "0.34.1"
  license :cannot_represent

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.34.1/pomerium-darwin-arm64.tar.gz"
    sha256 "0b80baf8c9ec28444e1cd9d96d051a37035bc8366499022f84d66514657bc623"
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.34.1/pomerium-linux-arm64.tar.gz"
      sha256 "890d086dedf5d8d3fa768e115c66e52bc5a595690a628f3ecf87d4e54c0719fa"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.34.1/pomerium-linux-amd64.tar.gz"
      sha256 "d104491c5c61cde12349c7ffb412215a5f791d963b9911ec2fc6a6e89c7d1e8a"
    end
  end

  def install
    bin.install "pomerium"
  end
end

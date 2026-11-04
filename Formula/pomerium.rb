class Pomerium < Formula
  desc "Identity Aware Proxy"
  homepage "https://www.pomerium.com"
  version "0.34.0"
  license :cannot_represent

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.34.0/pomerium-darwin-arm64.tar.gz"
    sha256 "22520c1c58e858a4a81638e03d9d09ff39c4674158936a27b56b0569f5d25583"
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.34.0/pomerium-linux-arm64.tar.gz"
      sha256 "ee83898766c4599f2f931dccbeb79954f27360151c4e5195e7797fbdfce0e50c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.34.0/pomerium-linux-amd64.tar.gz"
      sha256 "7db6fd7b890590ef2969da3108b396c9db959309b62bfaccb82ada8735dcdea7"
    end
  end

  def install
    bin.install "pomerium"
  end
end

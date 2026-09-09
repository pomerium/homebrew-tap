class Pomerium < Formula
  desc ""
  homepage "https://www.pomerium.com"
  version "0.33.3"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/pomerium/pomerium/releases/download/v0.33.3/pomerium-darwin-arm64.tar.gz"
    sha256 "31af07d9151cbdc1c5e73384cde23ff9ebfdf25bed8fa59c7c8a11304e73a1c3"

    def install
      bin.install "pomerium"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.3/pomerium-linux-arm64.tar.gz"
      sha256 "6618ee7aebd3f9fd87ed212240c9836c61a69e3a18a77eaaf5ff54376ca7af76"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.33.3/pomerium-linux-amd64.tar.gz"
      sha256 "910bd5c0516a76bc9229fdbde3a8cd6f37fa95b70ad7951676ae94535758bfb3"

      def install
        bin.install "pomerium"
      end
    end
  end
end

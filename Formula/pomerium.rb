# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.29.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.29.1/pomerium-darwin-amd64.tar.gz"
      sha256 "c95b71902985ba96e6e6c3acc9c394923cb77bb612bc6e65463d046b593e87f7"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.29.1/pomerium-linux-amd64.tar.gz"
      sha256 "8861b74ef6725cf601460a1f30398192a832683cf257d3e8256172d5d0dbfc2a"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.29.1/pomerium-linux-arm64.tar.gz"
      sha256 "c288369f9fde8b841bca40617e6f91090765e093d60e03c820a904395c945ce9"

      def install
        bin.install "pomerium"
      end
    end
  end
end

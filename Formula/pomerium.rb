# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.28.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.28.0/pomerium-darwin-amd64.tar.gz"
      sha256 "5e10370812319eea13e20595a85ac1204eb6407d222a619b5027860249777263"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.28.0/pomerium-linux-arm64.tar.gz"
      sha256 "a5fd03b4b47c9a714557c42e700873b9d634b3e001284a37e123f6c650e6dfda"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.28.0/pomerium-linux-amd64.tar.gz"
      sha256 "6e2730dbc81d1627ab651582b557d30365bb95eb45b7a5a34b0f3f2b007563b7"

      def install
        bin.install "pomerium"
      end
    end
  end
end

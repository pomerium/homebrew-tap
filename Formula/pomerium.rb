# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.22.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.22.1/pomerium-darwin-amd64.tar.gz"
      sha256 "146da9205cbd00decf5a2f36f40a8c625bf0d25db96a2538c0885ee1d5c46e90"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.22.1/pomerium-linux-arm64.tar.gz"
      sha256 "e42b0b066356a8e557a080f7100b987d30bb3e037b5a42bfefbc5a32879a9bfc"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.22.1/pomerium-linux-amd64.tar.gz"
      sha256 "195331fd9a5cac271c3847a3ba5208a6c38834edab2efe4b3d4d28219bc9ad90"

      def install
        bin.install "pomerium"
      end
    end
  end
end

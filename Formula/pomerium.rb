# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.21.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.1/pomerium-darwin-amd64.tar.gz"
      sha256 "a1ede01c348618b5958c1bce9ff000a9649ed9b5dea57d9d36c09c7840bc3cca"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.1/pomerium-darwin-arm64.tar.gz"
      sha256 "87a6fccac399d64e0099484754c67ec8676525505ba07bb241ce7456b28c63b6"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.1/pomerium-linux-amd64.tar.gz"
      sha256 "c88f323bc1cc1e0a77cf7f691716f8ad57c0a86a39375493afd25e5d626e6f21"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.1/pomerium-linux-arm64.tar.gz"
      sha256 "dadc9f485229ca5812b571ca1492411b0863bfe3b0a31ea299192cf9cc8b409d"

      def install
        bin.install "pomerium"
      end
    end
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.0/pomerium-darwin-arm64.tar.gz"
      sha256 "4ff329fa4c243901947e3e9ceffa04b0edeeea5ff6af186b3bb87a1da28bc337"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.0/pomerium-darwin-amd64.tar.gz"
      sha256 "8461d027e52c6028d829bf2a09d4f3d652996318d656ebe0df8d34c2c2d8a61b"

      def install
        bin.install "pomerium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.0/pomerium-linux-amd64.tar.gz"
      sha256 "2414fe65fb15e7f6fbeb8e122a5561dbd2a8bc5f5894128d96451cc45c9b70be"

      def install
        bin.install "pomerium"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pomerium/pomerium/releases/download/v0.21.0/pomerium-linux-arm64.tar.gz"
      sha256 "500fa2b341d702c833c1bbc18e8341c7e6c543df996fa5e0d09c0126486b6b2b"

      def install
        bin.install "pomerium"
      end
    end
  end
end

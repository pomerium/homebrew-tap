# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pomerium < Formula
  desc ""
  homepage ""
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pomerium/pomerium/releases/download/v0.12.0/pomerium-darwin-amd64.tar.gz"
    sha256 "f413bdf52a26373d8ebde5e4a01d108670e67f32bbde1d06b2601efe9214b0f5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pomerium/pomerium/releases/download/v0.12.0/pomerium-linux-amd64.tar.gz"
    sha256 "7f7a6bd3847e48f2f3a59d5bd305aa5c5724cb850875c67123108eda30d7856d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/pomerium/pomerium/releases/download/v0.12.0/pomerium-linux-arm64.tar.gz"
    sha256 "314c4ff73d97caab137a6d5f632e7ade2b31d4d35815d367010de0aa2dd24b35"
  end

  def install
    bin.install "pomerium"
  end
end

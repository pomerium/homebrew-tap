# This file was generated by GoReleaser. DO NOT EDIT.	
class PomeriumCli < Formula	
  desc ""	
  homepage ""	
  version "0.10.0-rc3"	
  bottle :unneeded	

  if OS.mac?	
    url "https://github.com/pomerium/pomerium/releases/download/v0.10.0-rc3/pomerium-cli-darwin-amd64.tar.gz"	
    sha256 "c0c61fc34f612ad60bae43ce0cd3dfeb4b5beb3790284b0fab20e7aabc0222eb"	
  elsif OS.linux?	
    if Hardware::CPU.intel?	
      url "https://github.com/pomerium/pomerium/releases/download/v0.10.0-rc3/pomerium-cli-linux-amd64.tar.gz"	
      sha256 "429be0573476eecf83a9421aaa39157096caf4683f96dcd5df31f4ea46767dfc"	
    end	
    if Hardware::CPU.arm?	
      if Hardware::CPU.is_64_bit?	
        url "https://github.com/pomerium/pomerium/releases/download/v0.10.0-rc3/pomerium-cli-linux-arm64.tar.gz"	
        sha256 "8f1a067b1de900322d85966241906b5e24ae14e9a3ea6d3546826b9a686a4eed"	
      else	
        url "https://github.com/pomerium/pomerium/releases/download/v0.10.0-rc3/pomerium-cli-linux-armv6.tar.gz"	
        sha256 "a7bdec639a8bc6dfda9cac9de856055a70cf5b88daba259593a2d2b4457891de"	
      end	
    end	
  end	

  def install	
    bin.install "pomerium-cli"	
  end	
end

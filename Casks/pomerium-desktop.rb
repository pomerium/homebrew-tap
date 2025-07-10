cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.30.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "e83a86534ca4f617e329d2ecb561e34d78f906ec6ae37c8ff64931971b433d8f"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.30.1/Pomerium-Desktop-0.30.1.dmg"
  else
    sha256 "eb6d963505a01884e6a26d1b4dcdfed304cc1b3d77a310413bd397bf01bd3a38"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.30.1/Pomerium-Desktop-0.30.1-arm64.dmg"
  end
end

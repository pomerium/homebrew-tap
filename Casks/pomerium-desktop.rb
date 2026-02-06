cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.32.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "f7e48ce05efc717617ae8952b739c8f85c8b73a8be20023ffb8661806eadb2bf"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.32.1/Pomerium-Desktop-0.32.1.dmg"
  else
    sha256 "5ceee1639a246d84407af94b183e118969c56ca59947d8027fb5d958b05c6c3d"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.32.1/Pomerium-Desktop-0.32.1-arm64.dmg"
  end
end

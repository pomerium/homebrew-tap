cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.20.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "0467ebe281ed1c145dbf17b04d2aaeca4741fe7a28ec89239dac97fcb4401d0e"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.20.0/Pomerium-Desktop-0.20.0.dmg"
  else
    sha256 "fd087b224337631379a54008a6993f461bc619e47fc42f8d42fe3935a25dd3e4"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.20.0/Pomerium-Desktop-0.20.0-arm64.dmg"
  end
end

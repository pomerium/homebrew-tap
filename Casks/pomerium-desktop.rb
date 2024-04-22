cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.23.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "52ae98f58fb73b24f0aa03c5a8050500edb8dd401d395078b4aa7c3230f9f07d"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.23.0/Pomerium-Desktop-0.23.0.dmg"
  else
    sha256 "54e230ef4f531775e7f94af29c2797c410e881e17746a301fd04031911325686"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.23.0/Pomerium-Desktop-0.23.0-arm64.dmg"
  end
end

cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.18.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "88bdc7d41369475d277d34948b18d6dfb78ccbfa49e29fb0c93e076bce2023d9"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.18.0/Pomerium-Desktop-0.18.0.dmg"
  else
    sha256 "bdfd3502ad3bba6d0a2c1ff653f97fb00118d8a6bd62befdeff0af80ac5c545a"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.18.0/Pomerium-Desktop-0.18.0-arm64.dmg"
  end
end

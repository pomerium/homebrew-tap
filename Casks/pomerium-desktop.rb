cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.31.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "c936766b51df5198a22299674e84348bdd032c1fa1f70c8efa4ca2ead22f7b41"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.31.0/Pomerium-Desktop-0.31.0.dmg"
  else
    sha256 "0bdeeff35533a48ef7b3284c58de317e9ec4ff7fea2dddd2330bbcdbb217bc2e"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.31.0/Pomerium-Desktop-0.31.0-arm64.dmg"
  end
end

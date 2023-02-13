cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.21.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "46eb29afaf52cbcbce85e1bbcef9b320c9fd72dd4a5bbc0a47b1b565b9862bc3"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.21.1/Pomerium-Desktop-0.21.1.dmg"
  else
    sha256 "e1480b6b64b1780b56e3c7d98f7ff3f768f8d3636001f3153934aa53d6b1c7d1"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.21.1/Pomerium-Desktop-0.21.1-arm64.dmg"
  end
end

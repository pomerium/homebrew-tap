cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.22.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "90caa649cd00193e015d94889eb3a3a4c44fa438830240337f5c2ffcd8c27e63"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.22.0/Pomerium-Desktop-0.22.0.dmg"
  else
    sha256 "b063448a6a9dd5263057daede6fd4043d25e5011cf861701c70b2c44fdfbff19"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.22.0/Pomerium-Desktop-0.22.0-arm64.dmg"
  end
end

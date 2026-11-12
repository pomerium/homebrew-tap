cask "pomerium-desktop" do
  version "0.34.1"
  sha256 "1d97f807e6ef7ce82f7e5152b8df457dce14917778ad21a6b73ffce0e951e554"

  url "https://github.com/pomerium/desktop-client/releases/download/v0.34.1/Pomerium-Desktop-0.34.1-arm64.dmg"
  name "Pomerium Desktop"
  desc ""
  homepage "https://www.pomerium.com"

  depends_on arch: :arm64

  app "Pomerium Desktop.app"
end

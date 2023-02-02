cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.21.0-rc2"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.21.0-rc2/Pomerium-Desktop-0.21.0-rc2.dmg"
  else
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.21.0-rc2/Pomerium-Desktop-0.21.0-rc2-arm64.dmg"
  end
end

cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.32.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.32.0/Pomerium-Desktop-0.32.0.dmg"
  else
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.32.0/Pomerium-Desktop-0.32.0-arm64.dmg"
  end
end

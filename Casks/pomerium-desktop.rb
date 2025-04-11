cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.29.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "fb5f99f10e2b9e86ea81ee0f4644bc4cdf8062cd80cbb72e07b9071a68abeda7"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.29.1/Pomerium-Desktop-0.29.1.dmg"
  else
    sha256 "06e3cab0f7f0ee3637aa5f168c103b1bf89ab28d909fcff7cb1e8fc78285543e"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.29.1/Pomerium-Desktop-0.29.1-arm64.dmg"
  end
end

cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.33.0"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "e81f83d0f115b9594821455c7b842d98b84d592dfe92d4f88a3114c9b8f2bf63"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.33.0/Pomerium-Desktop-0.33.0.dmg"
  else
    sha256 "136b259d02598a9a6b6f6b4182e16ab4cb77d42e31e8900ca4bd236f53c18f94"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.33.0/Pomerium-Desktop-0.33.0-arm64.dmg"
  end
end

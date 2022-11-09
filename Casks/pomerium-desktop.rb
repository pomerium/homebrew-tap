cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.19.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "6c769e79614abd607cceab6e031e7357c2dab37989bf3988b74f8cfc59046060"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.19.1/Pomerium-Desktop-0.19.1.dmg"
  else
    sha256 "c51d61d00144ff9e2413a8a75cb8ef05462806d46fb92c1254ec5f8e8f236c67"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.19.1/Pomerium-Desktop-0.19.1-arm64.dmg"
  end
end

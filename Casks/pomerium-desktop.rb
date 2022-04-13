cask "pomerium-desktop" do
  name "Pomerium Desktop"
  homepage "https://www.pomerium.com"
  desc ""
  version "0.17.1"

  app "Pomerium Desktop.app"

  if Hardware::CPU.intel?
    sha256 "238d0dca5abd79ae82514b9055c0274087847d8cdc8cdbd1e7d9b50f8a4f512d"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.17.1/Pomerium-Desktop-0.17.1.dmg"
  else
    sha256 "5c76c29a00cfb52f43ce4ac4a0c4cc9fbb8afb580bbff828746d98de64181439"
    url "https://github.com/pomerium/desktop-client/releases/download/v0.17.1/Pomerium-Desktop-0.17.1-arm64.dmg"
  end
end

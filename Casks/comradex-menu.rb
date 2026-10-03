cask "comradex-menu" do
  version "0.15.0"
  sha256 "ff46bdcb49ed1283c14841e9b8df5f28e1c947426742290d4031da72f618b565"

  url "https://github.com/nicosuave/comradex/releases/download/v0.15.0/comradex-menu-0.15.0-macos-universal.zip"
  name "Comradex Menu"
  desc "Menu bar companion for the Comradex account router"
  homepage "https://github.com/nicosuave/comradex"

  depends_on macos: ">= :sonoma"

  app "ComradexMenu.app"

  caveats <<~EOS
    Comradex Menu connects to the daemon installed by the Comradex formula:
      brew install nicosuave/tap/comradex
  EOS
end

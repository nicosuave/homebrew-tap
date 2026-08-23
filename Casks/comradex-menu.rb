cask "comradex-menu" do
  version "0.9.9"
  sha256 "855409fa98c66de9a4e6077c7d948db46c4697e3a64c85cfb449d5ddb4cadf21"

  url "https://github.com/nicosuave/comradex/releases/download/v0.9.9/comradex-menu-0.9.9-macos-universal.zip"
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

cask "comradex-menu" do
  version "0.19.3"
  sha256 "a464b658769db04665cc6b4b9897e516016cd22d6b350acc4057176424608ff0"

  url "https://github.com/nicosuave/comradex/releases/download/v0.19.3/comradex-menu-0.19.3-macos-universal.zip"
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

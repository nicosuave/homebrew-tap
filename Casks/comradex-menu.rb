cask "comradex-menu" do
  version "0.18.5"
  sha256 "bfd385dbe8fc90cc433d6dc1e18e82910ff76ed6ff343f94a825cdb38481296a"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.5/comradex-menu-0.18.5-macos-universal.zip"
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

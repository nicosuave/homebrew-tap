cask "comradex-menu" do
  version "0.11.4"
  sha256 "15b98a5f42f6f7ddef290c1dab20595e0bb05cda1750d372354f498437696ea2"

  url "https://github.com/nicosuave/comradex/releases/download/v0.11.4/comradex-menu-0.11.4-macos-universal.zip"
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

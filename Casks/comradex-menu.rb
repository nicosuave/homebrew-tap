cask "comradex-menu" do
  version "0.14.1"
  sha256 "6cfcaf49dcc00425d002c84908f6b0dc8076b43c709162705bd3c2fc164bb97f"

  url "https://github.com/nicosuave/comradex/releases/download/v0.14.1/comradex-menu-0.14.1-macos-universal.zip"
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

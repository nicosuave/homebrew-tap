cask "comradex-menu" do
  version "0.9.11"
  sha256 "0ab4cf16dbabf25878d78af690659cfa5f47a25264307462a1c615f097d9a6e3"

  url "https://github.com/nicosuave/comradex/releases/download/v0.9.11/comradex-menu-0.9.11-macos-universal.zip"
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

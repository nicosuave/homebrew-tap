cask "comradex-menu" do
  version "0.19.0"
  sha256 "17bf5c5f8a4d99fb0c4ffb696042bb532336c8f3e9d90a559bd74490df33cced"

  url "https://github.com/nicosuave/comradex/releases/download/v0.19.0/comradex-menu-0.19.0-macos-universal.zip"
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

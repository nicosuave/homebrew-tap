cask "comradex-menu" do
  version "0.11.1"
  sha256 "70a8b8140ca74b4f08187237fbcad53fe451753553fea695ad6f73a6bf75e657"

  url "https://github.com/nicosuave/comradex/releases/download/v0.11.1/comradex-menu-0.11.1-macos-universal.zip"
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

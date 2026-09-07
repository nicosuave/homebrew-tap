cask "comradex-menu" do
  version "0.10.4"
  sha256 "7b63e388a87776184582bc6249b0ecdc6c5c0cffa2f974ff6ed4a9ce3cf6a2d4"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.4/comradex-menu-0.10.4-macos-universal.zip"
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

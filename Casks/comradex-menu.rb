cask "comradex-menu" do
  version "0.16.0"
  sha256 "79f849971872d6d9b9f9e35fe7019bd108639589331371c6afcf597cbb01d26e"

  url "https://github.com/nicosuave/comradex/releases/download/v0.16.0/comradex-menu-0.16.0-macos-universal.zip"
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

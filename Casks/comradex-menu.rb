cask "comradex-menu" do
  version "0.10.1"
  sha256 "1b9ec353d579267e84874123ba4b6c136e18eb2747d20ea0bdddcfde03bd198b"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.1/comradex-menu-0.10.1-macos-universal.zip"
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

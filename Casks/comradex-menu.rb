cask "comradex-menu" do
  version "0.11.3"
  sha256 "1a2be1b535ff2d6c3e8c557a5d4bfe2d0d642890458009aa6608b9dd1aeb5a62"

  url "https://github.com/nicosuave/comradex/releases/download/v0.11.3/comradex-menu-0.11.3-macos-universal.zip"
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

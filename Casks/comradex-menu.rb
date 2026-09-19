cask "comradex-menu" do
  version "0.14.2"
  sha256 "86ee01ba3b41c392ac0c3d2e560324af5f2509ecd449e11ae72d105aa5db442b"

  url "https://github.com/nicosuave/comradex/releases/download/v0.14.2/comradex-menu-0.14.2-macos-universal.zip"
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

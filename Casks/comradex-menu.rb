cask "comradex-menu" do
  version "0.13.1"
  sha256 "ca891c8bc87e78fed39fbb5c3cdd24669f389b04f5e43f0710341bff954d7bc1"

  url "https://github.com/nicosuave/comradex/releases/download/v0.13.1/comradex-menu-0.13.1-macos-universal.zip"
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

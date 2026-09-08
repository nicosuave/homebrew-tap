cask "comradex-menu" do
  version "0.11.2"
  sha256 "8d661da9720e2c9104eaba48e634747961cbe9150ba3b2c11093d9959c01280f"

  url "https://github.com/nicosuave/comradex/releases/download/v0.11.2/comradex-menu-0.11.2-macos-universal.zip"
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

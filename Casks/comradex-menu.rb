cask "comradex-menu" do
  version "0.18.6"
  sha256 "d01ac285817dcc2287a9b8db71fb13550e88b9543800ba3e6e152c5d09da9035"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.6/comradex-menu-0.18.6-macos-universal.zip"
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

cask "comradex-menu" do
  version "0.11.0"
  sha256 "d92891800d910842cf78542d8205512c0e774c1b4175d9463b5d048647808e33"

  url "https://github.com/nicosuave/comradex/releases/download/v0.11.0/comradex-menu-0.11.0-macos-universal.zip"
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

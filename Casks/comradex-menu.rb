cask "comradex-menu" do
  version "0.10.0"
  sha256 "163a106d4e46befa327c16f7de35b17ae8d6c1126196ec8bb052fd58ac42c649"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.0/comradex-menu-0.10.0-macos-universal.zip"
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

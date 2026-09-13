cask "comradex-menu" do
  version "0.12.0"
  sha256 "c4b65680c83500829502239808a2ce1d3dc55671a39c48769823da91298d375f"

  url "https://github.com/nicosuave/comradex/releases/download/v0.12.0/comradex-menu-0.12.0-macos-universal.zip"
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

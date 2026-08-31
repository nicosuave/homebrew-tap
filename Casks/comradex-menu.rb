cask "comradex-menu" do
  version "0.10.2"
  sha256 "ec127304182882134c6cd82deed74b572b078a21aebe60b3decdf0c089f927f9"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.2/comradex-menu-0.10.2-macos-universal.zip"
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

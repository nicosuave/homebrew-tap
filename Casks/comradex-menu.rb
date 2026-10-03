cask "comradex-menu" do
  version "0.14.3"
  sha256 "8ca7476ab85bbbbf1148e0f90a5b68da066467d8dc6ad0079b67876a03eb66bb"

  url "https://github.com/nicosuave/comradex/releases/download/v0.14.3/comradex-menu-0.14.3-macos-universal.zip"
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

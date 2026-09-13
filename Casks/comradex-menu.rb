cask "comradex-menu" do
  version "0.13.0"
  sha256 "aa9d4ee03b03b629f36f1a71b7842e661202daa1e173b7b26410e8ce1be1e060"

  url "https://github.com/nicosuave/comradex/releases/download/v0.13.0/comradex-menu-0.13.0-macos-universal.zip"
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

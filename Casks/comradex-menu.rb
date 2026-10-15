cask "comradex-menu" do
  version "0.18.2"
  sha256 "2a89490909ddbca7874d0b3a935d773defceb344cec6c8c6476f33537876ec07"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.2/comradex-menu-0.18.2-macos-universal.zip"
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

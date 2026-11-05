cask "comradex-menu" do
  version "0.19.4"
  sha256 "99dba3fc30eb29f76d9514541a92335aebd5fc5bf60833d3f531169df32a6998"

  url "https://github.com/nicosuave/comradex/releases/download/v0.19.4/comradex-menu-0.19.4-macos-universal.zip"
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

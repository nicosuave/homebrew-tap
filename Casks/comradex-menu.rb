cask "comradex-menu" do
  version "0.18.4"
  sha256 "8e3941e020d9dc2f159c660aff0369432325e7ff024ec7d3da668a2078b82bb1"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.4/comradex-menu-0.18.4-macos-universal.zip"
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

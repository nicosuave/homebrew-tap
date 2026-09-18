cask "comradex-menu" do
  version "0.14.0"
  sha256 "1c5c3cc5273388579eee1351b1af2858d6ac26522d234bd893d74500ddb342c8"

  url "https://github.com/nicosuave/comradex/releases/download/v0.14.0/comradex-menu-0.14.0-macos-universal.zip"
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

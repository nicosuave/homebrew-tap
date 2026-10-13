cask "comradex-menu" do
  version "0.18.0"
  sha256 "88316f3c9c34da678c0e62eebe0677277042ca579f7f8144aa945f09b2bd0a53"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.0/comradex-menu-0.18.0-macos-universal.zip"
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

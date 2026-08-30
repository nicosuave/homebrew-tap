cask "comradex-menu" do
  version "0.9.12"
  sha256 "afc57ddd2bbce4d58e56be9e3fe5d5954c865362572913dc7364dd4776a2433a"

  url "https://github.com/nicosuave/comradex/releases/download/v0.9.12/comradex-menu-0.9.12-macos-universal.zip"
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

cask "comradex-menu" do
  version "0.9.10"
  sha256 "1013c11fef0290729c061482c8e07136253d6d3cd0a506c239c5cf53ad624f64"

  url "https://github.com/nicosuave/comradex/releases/download/v0.9.10/comradex-menu-0.9.10-macos-universal.zip"
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

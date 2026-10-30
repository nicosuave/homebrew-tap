cask "comradex-menu" do
  version "0.19.1"
  sha256 "20e0097e60bb4cdd4aa4621ba0f0065afb87e09edc80797faaeeab8387489ae1"

  url "https://github.com/nicosuave/comradex/releases/download/v0.19.1/comradex-menu-0.19.1-macos-universal.zip"
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

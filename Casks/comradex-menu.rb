cask "comradex-menu" do
  version "0.18.1"
  sha256 "881876f63ba1c7eeb9c5252d49d7c2b328e3807f85fa866d73cf7c57744a087d"

  url "https://github.com/nicosuave/comradex/releases/download/v0.18.1/comradex-menu-0.18.1-macos-universal.zip"
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

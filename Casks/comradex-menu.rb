cask "comradex-menu" do
  version "0.10.5"
  sha256 "1a5138e4dbb7bd795000604bdefe44002033ecb1f8670f68e38125034cf13c3f"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.5/comradex-menu-0.10.5-macos-universal.zip"
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

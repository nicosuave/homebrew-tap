cask "comradex-menu" do
  version "0.17.0"
  sha256 "abe83c05c6aab3031982c5b57e2f838f4b0ce1041dc2baf4f79e0d0b0dd30e6f"

  url "https://github.com/nicosuave/comradex/releases/download/v0.17.0/comradex-menu-0.17.0-macos-universal.zip"
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

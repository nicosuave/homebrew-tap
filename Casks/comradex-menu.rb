cask "comradex-menu" do
  version "0.10.3"
  sha256 "03b684d721916c10b5e504c57744865e791ea2d4adaa20b014881944efcede2b"

  url "https://github.com/nicosuave/comradex/releases/download/v0.10.3/comradex-menu-0.10.3-macos-universal.zip"
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

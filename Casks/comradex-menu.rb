cask "comradex-menu" do
  version "0.19.2"
  sha256 "fc73d9ba0eb50fa4be2552db6c34dac3cbfc1d371f7a188909c7c97f5b150ff8"

  url "https://github.com/nicosuave/comradex/releases/download/v0.19.2/comradex-menu-0.19.2-macos-universal.zip"
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

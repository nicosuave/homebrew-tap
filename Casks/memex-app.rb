cask "memex-app" do
  version "0.28.0"
  sha256 "3612bd64617532a5be599bc3b1b65a73def738be2ece9ed9d4b6f727faf07595"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

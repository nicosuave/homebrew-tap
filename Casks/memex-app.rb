cask "memex-app" do
  version "0.32.0"
  sha256 "b0a82f5d5ed7fcab1bd198283841888e23f5ef364ba13d9bc7a7f2483107053b"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

cask "memex-app" do
  version "0.19.2"
  sha256 "b1d6636db703515108a6b85de9f31e73383c1b33a6c002a38d1d7708c6d1a9aa"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-universal.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on macos: :sonoma

  app "Memex.app"
end

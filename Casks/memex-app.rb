cask "memex-app" do
  version "0.19.0"
  sha256 "dc90e5bc2d50b3fd9dc9de31d85f9f37e667ab6a8229449b9b45683ecb112890"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-universal.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on macos: :sonoma

  app "Memex.app"
end

cask "memex-app" do
  version "0.19.7"
  sha256 "90d7b128eee47eba8b6c681976c53dad2751b315b50480ca41a8c9a69e20016f"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-universal.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on macos: :sonoma

  app "Memex.app"
end

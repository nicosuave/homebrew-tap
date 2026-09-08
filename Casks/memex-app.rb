cask "memex-app" do
  version "0.18.1"
  sha256 "2a2eb9d4a58cf565aba8f4428aee6a88bc1c5fbf1c8598f85e55fbc5bda2f4bd"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-universal.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on macos: :sonoma

  app "Memex.app"
end

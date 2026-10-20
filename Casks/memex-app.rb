cask "memex-app" do
  version "0.30.0"
  sha256 "f0a043b57f5fa2803081b29549062eb304630e995645f8b99e7db8d29ca76fed"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

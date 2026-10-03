cask "memex-app" do
  version "0.26.0"
  sha256 "94c49b8b6b9146a7aa042308839e2b630e46e773a9d28a1cb6aff83ff8f49e88"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

cask "memex-app" do
  version "0.33.0"
  sha256 "c2402d88b60706125f5e4edf523a975549a5e523c5ac1023453ccb9b5655b064"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

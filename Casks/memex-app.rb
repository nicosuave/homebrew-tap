cask "memex-app" do
  version "0.29.0"
  sha256 "b1b1a935ba5662c31dc30a0b17845ee63ccb8d85ddab8a3519dd1bc1b9528087"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

cask "memex-app" do
  version "0.31.1"
  sha256 "c3738eb94a7cf6b187eb387c49b8d0bb86536ca84008d7d856280224824c48af"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

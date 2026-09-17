cask "memex-app" do
  version "0.22.0"
  sha256 "1d8f1e55a09fcc12a6206c10c49e4ed79f086bfcdbc580c509dc5a27464a42ec"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

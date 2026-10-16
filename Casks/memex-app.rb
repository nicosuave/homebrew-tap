cask "memex-app" do
  version "0.29.1"
  sha256 "cac652c18e81ddc709e5fe93e8f2c831c9b92ff2cf650c7d51a7c2231243c75a"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

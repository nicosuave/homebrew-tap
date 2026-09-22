cask "memex-app" do
  version "0.24.0"
  sha256 "e23f34d43c1a9b191d154b3d2f002505abc267dd0b644a7eab474b9b884c2fd0"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

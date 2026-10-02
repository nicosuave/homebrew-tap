cask "memex-app" do
  version "0.25.0"
  sha256 "349bfe2c64383edff4ede0bd27bf75d9dfc046907c6da962f48365da3d39a076"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

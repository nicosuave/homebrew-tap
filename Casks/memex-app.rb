cask "memex-app" do
  version "0.31.0"
  sha256 "8237cf5e0216ac4b0116d2e444045ea4355bf5fd1a0ca232ac3a8811894509d0"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

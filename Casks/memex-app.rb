cask "memex-app" do
  version "0.20.0"
  sha256 "dab965fe2207fe7d010e86ab751dc65a032b94b06d9a2ba5f44a66ca568a91e6"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

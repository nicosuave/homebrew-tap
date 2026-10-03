cask "memex-app" do
  version "0.27.0"
  sha256 "fc151db706a398597e02063d49d06fe78a23696cd9b1d6761fbf02145c268011"

  url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-app-#{version}-macos-arm64.zip"
  name "Memex"
  desc "Browse and search local agent conversation history"
  homepage "https://github.com/nicosuave/memex"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Memex.app"
end

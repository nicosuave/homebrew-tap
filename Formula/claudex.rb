class Claudex < Formula
  desc "Claude app-server facade for the Codex desktop"
  homepage "https://github.com/nicosuave/claudex"
  version "0.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.16/claudex-0.2.16-macos-arm64.tar.gz"
      sha256 "f63711d3abeebb4698c268380fafb59ed116ac9ea5729a968170ddf6dd5e6ae8"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.16/claudex-0.2.16-macos-x86_64.tar.gz"
      sha256 "fa1c08801d1fd30277bb34a22579d2b18b291f5eebe4b3115b3b54a365843ab2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.16/claudex-0.2.16-linux-arm64.tar.gz"
      sha256 "9ece01bd719b78da4182d5a861312171d8c38824e55313ba5017a9f051b9db08"
    else
      url "https://github.com/nicosuave/claudex/releases/download/v0.2.16/claudex-0.2.16-linux-x86_64.tar.gz"
      sha256 "24a39408ac738e5cc96edbf09d29868ae6b995e085927606aa99fc06c95396c6"
    end
  end

  def install
    bin.install "claudex"
    pkgshare.install "NOTICE", "licenses"
  end

  def caveats
    <<~EOS
      macOS desktop setup requires Codex, authenticated Claude Code, and Remote Login:
        claudex install
        claudex doctor

      Linux supports the stdio server; desktop installation requires macOS.
    EOS
  end

  test do
    assert_match "claude-codex-server #{version}", shell_output("#{bin}/claudex --version")
    assert_match "install", shell_output("#{bin}/claudex install --help")
  end
end

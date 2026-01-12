class Memex < Formula
  desc "Fast local history search for Claude and Codex logs"
  homepage "https://github.com/nicosuave/memex"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-arm64.tar.gz"
      sha256 "555f48494a9f4263484581ad469e028aee0ed41e0f32eeb2027a6b3abb8f7daa"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-macos-x86_64.tar.gz"
      sha256 "e435c36827ac2409a2f7ee46fca74c8e82d5b91ba9a228eccc8863b0945e400b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-arm64.tar.gz"
      sha256 "711d588b5cb8230333baa4921c4f757e1ce6df5a07aa6dea4efff93ac7af7b7a"
    else
      url "https://github.com/nicosuave/memex/releases/download/v#{version}/memex-#{version}-linux-x86_64.tar.gz"
      sha256 "19c3d39dba1ca5721ff7c4ba552106a68a32b0cf7a34298cb89ba46772cc97fe"
    end
  end

  def install
    bin.install "memex"
  end

  def caveats
    <<~EOS
      Run setup to install the Claude/Codex skill:
        memex setup
    EOS
  end

  test do
    assert_match "memex", shell_output("#{bin}/memex --version")
  end
end

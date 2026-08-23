class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.8/comradex-0.9.8-macos-arm64.tar.gz"
      sha256 "a5d00b59d0f71d0260c426c18a1c8b8c4b6128608ebd36cc8884c917f52b4ddf"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.8/comradex-0.9.8-macos-x86_64.tar.gz"
      sha256 "298a29c387953c2d7b84d452fc2d37a1509510e703a3075c32df71a2500062fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.8/comradex-0.9.8-linux-arm64.tar.gz"
      sha256 "29c577c4763414821fae5eef7c14418f06dc7e4164ddd71b0b17df3ef68fe1b5"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.9.8/comradex-0.9.8-linux-x86_64.tar.gz"
      sha256 "2b440e0bf8ff713516b619ade4ffd07fb23c0099bf334b20182df23a1aeef85d"
    end
  end

  def install
    bin.install "comradex"
  end

  def caveats
    <<~EOS
      Create a configuration before starting Comradex:
        comradex init
    EOS
  end

  test do
    assert_match "comradex", shell_output("#{bin}/comradex --version")
  end
end

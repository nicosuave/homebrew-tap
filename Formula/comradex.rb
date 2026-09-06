class Comradex < Formula
  desc "Sticky account-pool router for native Codex traffic"
  homepage "https://github.com/nicosuave/comradex"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.3/comradex-0.10.3-macos-arm64.tar.gz"
      sha256 "02d7497f5db9300df3b71087de8cdbd1eeb4e3c7c1ceb59c485a479225191fd3"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.3/comradex-0.10.3-macos-x86_64.tar.gz"
      sha256 "b0033614a33ee38ba802a4cdb9a196cc47fcfb199b8d1f87d201b63a6366864c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.3/comradex-0.10.3-linux-arm64.tar.gz"
      sha256 "da00bc25beb44856278fcc026d8c683ecd09c539022889863584b231f12bb4f4"
    else
      url "https://github.com/nicosuave/comradex/releases/download/v0.10.3/comradex-0.10.3-linux-x86_64.tar.gz"
      sha256 "ebfb93b22f8a6f44c10abca5eb5fc7a6b97ddd5b3d25592650877e2273c5585a"
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

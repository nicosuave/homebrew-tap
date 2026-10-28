class RexLaunch < Formula
  desc "Composer popup for Rex that starts a coding agent in a new git worktree"
  homepage "https://github.com/nicosuave/rex-launch"
  version "0.1.0"

  depends_on "worktrunk"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/rex-launch/releases/download/v0.1.0/rex-launch-0.1.0-macos-arm64.tar.gz"
      sha256 "ab5155f29160bd31d3ce1aa1ea0dcb1e692c46462739fc9b9e31f13cad09b5c9"
    else
      url "https://github.com/nicosuave/rex-launch/releases/download/v0.1.0/rex-launch-0.1.0-macos-x86_64.tar.gz"
      sha256 "7c863e3db48e563d550a0fabfd2f09868f872aa273331c26082e1eca57c51c08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nicosuave/rex-launch/releases/download/v0.1.0/rex-launch-0.1.0-linux-arm64.tar.gz"
      sha256 "9bf8912e7a3eda9eb9dc9370c8a9b5b3873594adda771f83cac396413d7795ac"
    else
      url "https://github.com/nicosuave/rex-launch/releases/download/v0.1.0/rex-launch-0.1.0-linux-x86_64.tar.gz"
      sha256 "abc05ec9ef8a2e2e13cef357ab2648b8e9ae4de9480b1b4fe392dcfe53c83633"
    end
  end

  def install
    bin.install "rex-launch"
  end

  def caveats
    <<~EOS
      Add the composer popup to Rex (Cmd+Shift+N, or "rex-launch: new task"
      in the command palette):
        rex-launch setup

      Run it again after upgrading to refresh the Rex module.
    EOS
  end

  test do
    assert_match "rex-launch #{version}", shell_output("#{bin}/rex-launch --version")
    assert_match "rex-launch setup", shell_output("#{bin}/rex-launch --help")
  end
end

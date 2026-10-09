class Yolk < Formula
  desc "Keep your Mac awake and Slack active while AI agents run"
  homepage "https://github.com/coreyervin/yolk"
  url "https://github.com/coreyervin/yolk/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3f3394b08e84cc93465c04b15458519e8788ff123ef7d0046e4cc4fad5f808fd"
  license "MIT"
  head "https://github.com/coreyervin/yolk.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  # MainActor.assumeIsolated in the session's timer handlers needs macOS 14.
  depends_on macos: :sonoma

  def install
    # --disable-sandbox: SwiftPM writes its build scratch space, which
    # Homebrew's sandbox otherwise blocks.
    system "swift", "build", "--disable-sandbox", "--configuration", "release",
                    "--product", "yolk"
    bin.install ".build/release/yolk"
  end

  def caveats
    <<~EOS
      Posting synthetic input needs Accessibility permission, granted to
      whatever launches yolk (your terminal, or tmux's responsible process).
      Keeping the Mac awake works without it; only Slack presence needs it.

      The menu bar app is not notarized yet and is not installed by this
      formula. Build it from a clone with `make app`.
    EOS
  end

  test do
    assert_match "yolk v#{version}", shell_output("#{bin}/yolk --version")
    assert_match "keep your Mac awake", shell_output("#{bin}/yolk --help")
  end
end

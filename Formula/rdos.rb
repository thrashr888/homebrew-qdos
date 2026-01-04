class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.4.0/rdos-macos-aarch64"
      sha256 "e4a8cadf027efa94b7d53d86eff4313b1f3ad6a9ee1228a7287b314e450b8a65"
    end
  end

  def install
    bin.install "rdos-macos-aarch64" => "rdos"
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

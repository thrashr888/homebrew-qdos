class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.1.0/rdos-macos-aarch64"
      sha256 "08e7d1e6dce19fd20f580c954841799208bfc83926b29601c57aa05b4c206aef"
    end
    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.1.0/rdos-macos-x86_64"
      sha256 "4f45135a8d3d0a96b8c541c612be45a72fa807b25e3f7106766033cbb2422dc9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "rdos-macos-aarch64" => "rdos"
    else
      bin.install "rdos-macos-x86_64" => "rdos"
    end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

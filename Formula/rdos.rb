class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.3.0/rdos-macos-aarch64"
      sha256 "97d5386398b9cd9ef274df3d362069d316643c541c6b9bfe242dad0c598ec9a2"
    end
    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.3.0/rdos-macos-x86_64"
      sha256 "10e7e0ff5d3ab6ea6de2e835d9ebcd51a0f2f8e781bc31538bbc2b81a3f6b68f"
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

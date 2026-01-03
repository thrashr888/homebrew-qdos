class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.2.0/rdos-macos-aarch64"
      sha256 "448f90751584fece20f148e5340feb1f3a3a644c941aa8dca9fff614eab27c98"
    end
    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.2.0/rdos-macos-x86_64"
      sha256 "3837d5c1bba444e87e579f80d1533a2369a51e0dfb7c0059409c2936c5883816"
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

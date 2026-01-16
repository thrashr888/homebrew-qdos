class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.17.0/rdos-macos-aarch64"
      sha256 "2df5367293946d8154da7e0fc2d504677a0fae6587a23f9ffc9c8faa969e8c9d"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    on_intel do
      # Intel Mac builds are no longer provided due to unreliable GitHub Actions runners.
      # Users on Intel Macs can build from source: cargo install --git https://github.com/thrashr888/QDOS
      odie "Intel Mac binaries are no longer provided. Please build from source or use an Apple Silicon Mac."
    end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

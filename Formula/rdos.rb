class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.19.0/rdos-macos-aarch64"
      sha256 "450c2ec14964e2896ebf79a3b1f626d42153d825dbb19fdf0048df1011d52dec"

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

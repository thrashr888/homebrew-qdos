class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.8.0/rdos-macos-aarch64"
      sha256 "6abd722e3c769db74967c4f62ec6d08c24f073a90369f2f36aa8b7f8e1e1b4af"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.8.0/rdos-macos-x86_64"
      sha256 "dd34248ddedeafcd3303e91c590101eb283fdda9da3d59e32a7505dd078dcae5"

      def install
        bin.install "rdos-macos-x86_64" => "rdos"
      end
    end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

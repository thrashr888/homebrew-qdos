class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.7.0/rdos-macos-aarch64"
      sha256 "8127b6c93c98e0dd207321326386d2989d88865bfc4b837ef01b71a4b3cc459c"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.7.0/rdos-macos-x86_64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "rdos-macos-x86_64" => "rdos"
      end
    end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

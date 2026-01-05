class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.6.0/rdos-macos-aarch64"
      sha256 "0d8be4c18357522dcfa185fe1dcf7d44cb2744e45b8e41fc7e0338289b14ed36"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    # Intel build not available in 0.6.0 - use previous version or build from source
    # on_intel do
    #   url "https://github.com/thrashr888/QDOS/releases/download/v0.5.0/rdos-macos-x86_64"
    #   sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    #
    #   def install
    #     bin.install "rdos-macos-x86_64" => "rdos"
    #   end
    # end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

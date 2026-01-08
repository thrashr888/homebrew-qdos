class Rdos < Formula
  desc "R-DOS: A modern TUI file manager inspired by Q-DOS II, written in Rust"
  homepage "https://github.com/thrashr888/QDOS"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.9.0/rdos-macos-aarch64"
      sha256 "7df6892de3661e735cf859f364c39544d8553f9add995700449bea60d382eb8b"

      def install
        bin.install "rdos-macos-aarch64" => "rdos"
      end
    end

    on_intel do
      url "https://github.com/thrashr888/QDOS/releases/download/v0.9.0/rdos-macos-x86_64"
      sha256 "cb20fc4653ca734440e1696353f68efc1e6aca7fe4c49cd026714ec5bbf1de5c"

      def install
        bin.install "rdos-macos-x86_64" => "rdos"
      end
    end
  end

  test do
    assert_match "rdos", shell_output("#{bin}/rdos --version 2>&1", 1)
  end
end

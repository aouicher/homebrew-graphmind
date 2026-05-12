class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.169"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.169/graphmind-cli-macos-arm64"
      sha256 "d1ced54bd2d8660c6f57ac5da00bfd1a30f34d712e5f1cc1879786e1321b04ba"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.169/graphmind-cli-macos-x64"
      sha256 "c1e2d967bd5c221f7ad0aaea604af49bb36a0b401236113df9ded59c314c0403"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.169/graphmind-cli-linux-x64"
    sha256 "56c77ea458e6514e1912ccc5345315d4a11532b1ced6a402e4543c3f2fde9c8d"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

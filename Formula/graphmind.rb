class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.191"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.191/graphmind-cli-macos-arm64"
      sha256 "49c76dc416605fe790f7b5fde98b60ace9e8c00153e43de50b2eba1eb1a63a09"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.191/graphmind-cli-macos-x64"
      sha256 "02b1fa0c2e1a6141d7e4df45ec25f5cd9f539f42634bbfa269f37dafad653a1f"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.191/graphmind-cli-linux-x64"
    sha256 "da6e15d1a916222a4324b833bcd7592585938f896a8f6cb594d617e20e1b2a0e"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.173"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.173/graphmind-cli-macos-arm64"
      sha256 "d882d8726a87cc2810e9f1b175f7a66915aedd22e75c28f89a2a8e1c81f30c2d"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.173/graphmind-cli-macos-x64"
      sha256 "45a9cd34823b9480d54d98f425c7d243f558eaf2e6f6564d1eb465e9329c51bf"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.173/graphmind-cli-linux-x64"
    sha256 "11ee38c05bfb1485df1c31967f95ef8c3a33e143a454072d5155c7c613a9d857"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

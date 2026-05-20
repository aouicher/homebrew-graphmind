class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.174"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.174/graphmind-cli-macos-arm64"
      sha256 "8095163f670a4c8889a346545890e8a08127b4cd5c4392ab75b490a8b2ffb834"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.174/graphmind-cli-macos-x64"
      sha256 "273cfb83ab9c456664a4ec381809a54b67431c3fa577d5022d53c7573a1a7eaf"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.174/graphmind-cli-linux-x64"
    sha256 "de3f59f5b0139f7fffcd2afd2c89a0e0d86bd261c511b8b3c76c0f0c71fcfe98"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

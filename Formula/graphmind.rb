class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.205"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.205/graphmind-cli-macos-arm64"
      sha256 "8481a2d86c31cb33438e8f173f633861e923fd34c84a485f7b0a765237489994"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.205/graphmind-cli-macos-x64"
      sha256 "802be24929f629027b9e78c2d2bdc774a3b9cf7dddd5269691145f96c8616735"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.205/graphmind-cli-linux-x64"
    sha256 "54d79d278a5b3c027c912b96dbfe4b304851ca50d0240e839eefd48181e8fcb0"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

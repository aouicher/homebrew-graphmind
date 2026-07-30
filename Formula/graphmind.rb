class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.212"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.212/graphmind-cli-macos-arm64"
      sha256 "dc30f2ce7024daa471eecc694ebefd2603efaafe6491b4be5b59ab8c17595e17"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.212/graphmind-cli-macos-x64"
      sha256 "98c883e9c508c4f54eb520d38371ee431badd163e0a3444f8c7f5532439f969f"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.212/graphmind-cli-linux-x64"
    sha256 "ba5d030925e56a52ee84e36e71b8dfd41b8c95bb08fe0b7ddb9d8ec8cf9a4299"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.167"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.167/graphmind-cli-macos-arm64"
      sha256 "18d3570e2b9476035e15788ef74191e5771d2483a1b815cf652bbd6419966097"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.167/graphmind-cli-macos-x64"
      sha256 "2e3bfe3239444aec0eb1dd0e34bc3da35d403c138acdfe1c67b7a1eb3a2329e4"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.167/graphmind-cli-linux-x64"
    sha256 "62dc1e18c9c949de0f1be30b7b12f36a881e66afb12500148acc69e09d8ed0bb"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

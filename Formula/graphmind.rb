class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.5/graphmind-cli-macos-arm64"
      sha256 "c43a76da09c73bf67da940b281d19d5877407ada6a7484b598d1d64aae885132"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.5/graphmind-cli-macos-x64"
      sha256 "05aeefc703f5755a4dcb8cfc49dd621c4b0191ac3e6555e1a579d7c764337d1f"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.5/graphmind-cli-linux-x64"
    sha256 "3959ce8b7f18735b97544234dc3464cd9b0b59aa1774c8d17615df29fa8683f3"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

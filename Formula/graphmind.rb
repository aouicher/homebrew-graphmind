class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.180"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.180/graphmind-cli-macos-arm64"
      sha256 "1e0ae76485258625706a893b18f3d899c5dccc72caf25330772d091bf24eaa3b"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.180/graphmind-cli-macos-x64"
      sha256 "1150f7d077eadcc671bcb58383fb6cde11199c9f54991894292c26c0b7cc4326"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.180/graphmind-cli-linux-x64"
    sha256 "4ce52976d46568f7ca63291a75cbc055e8254aa6a8da712db7d79024db7175bf"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

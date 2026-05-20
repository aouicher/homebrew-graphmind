class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.178"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.178/graphmind-cli-macos-arm64"
      sha256 "d656bc33740d9857126cf061f54531102863d15a956d3acb9b860039eb20a740"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.178/graphmind-cli-macos-x64"
      sha256 "0360b1952b78db52888c90332dec85c488e9abebcc3f7c62b006cf163c3dbc96"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.178/graphmind-cli-linux-x64"
    sha256 "e4efc2e517b25316b550cc4182699cb25c900a51308636816adb6fd49891bdb4"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

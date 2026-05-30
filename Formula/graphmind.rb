class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.196"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.196/graphmind-cli-macos-arm64"
      sha256 "ba4d037508cdc18a76d7204580a0869ae947b3a0d2344233435970a35bbb0b7e"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.196/graphmind-cli-macos-x64"
      sha256 "6a8bbb53968055ec97ccf6bfc82684c1789383c25654b51be31ae44d193292fa"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.196/graphmind-cli-linux-x64"
    sha256 "4d53731f3dc7dfcf23707796ec67910c3734c4b664f242e0b787273271e24371"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

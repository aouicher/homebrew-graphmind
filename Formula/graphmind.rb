class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.1/graphmind-cli-macos-arm64"
      sha256 "c614d965d0bc9684cc6e15a0dd163139393c39467f5da0d7e45d312313e93446"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.1/graphmind-cli-macos-x64"
      sha256 "268ccad3a38f35f2b260397b1e5ced41344d5a4ac0a1b458e701d74704cf5b70"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.1/graphmind-cli-linux-x64"
    sha256 "0471d68a63c0301e873b361b77096696409669e3970de0776256fd90bb48308b"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

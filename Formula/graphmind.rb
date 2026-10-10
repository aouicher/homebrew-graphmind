class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.0/graphmind-cli-macos-arm64"
      sha256 "eda04259a3927271aed0af2c2a5bcf72cc5ab1cbe8b47d110db1c6350d85a1b7"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.0/graphmind-cli-macos-x64"
      sha256 "c40aafd1b2e0965f152b8e0e98c3944d2b02e21c474848191ebc543c6d946225"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.0/graphmind-cli-linux-x64"
    sha256 "4795d4c66951ee276d5c27b158f74d2eee5cbf251ef058b8187bb8002ceae848"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

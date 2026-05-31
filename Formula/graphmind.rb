class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.204"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.204/graphmind-cli-macos-arm64"
      sha256 "e84ce1693175b3a57da1ce1551386965e4bc769019a34b49dce17065c8629129"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.204/graphmind-cli-macos-x64"
      sha256 "f7f3592e644e05c77bdbdb691480d61c8436e032208a2a132f2e85edd661c9fa"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.204/graphmind-cli-linux-x64"
    sha256 "93580cbf12fa09e4bea8379ab11bb970d66d7f8900d449203ebcc61fa71c2d7a"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

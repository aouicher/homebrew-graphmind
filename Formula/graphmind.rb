class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.6/graphmind-cli-macos-arm64"
      sha256 "cdd76aa1ad07d875e5d3340d53482a46bd58afe1865fa2b05c3e811980d80d24"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.6/graphmind-cli-macos-x64"
      sha256 "208705a02c7055ffc9c75a613851d3db963fb57925cf644ea26c6347825f7d3d"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.6/graphmind-cli-linux-x64"
    sha256 "db0db973095b13bfa3bf834d50919d660904a9d414adfd5fd8f909bf84e65313"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

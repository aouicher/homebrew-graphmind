class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.179"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.179/graphmind-cli-macos-arm64"
      sha256 "fb7e2422abaa256e92ff14fac199eacdd2c6914c2510caa2fe67838013b883a4"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.179/graphmind-cli-macos-x64"
      sha256 "edca563c58c21837b0452bab56871bf1cc7d75b90611906ed582ef4671226d53"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.179/graphmind-cli-linux-x64"
    sha256 "64ca005fd20f38865f188dc46bfa2dbe929bbef26730408354923420c858d39c"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

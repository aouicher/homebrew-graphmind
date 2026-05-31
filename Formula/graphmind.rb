class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.202"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.202/graphmind-cli-macos-arm64"
      sha256 "fd2c8e78f8358e245a7d20dcedd2b82f61348d70799e84be115dd2ddeb09df3d"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.202/graphmind-cli-macos-x64"
      sha256 "89597dcc11aa87fe0880e1dbaff0267eb046a6a1de9220acc0e2ed91c0719d27"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.202/graphmind-cli-linux-x64"
    sha256 "75cdd59917ec5b51494c290a290a47114da5c955bf6dc71830f47363ea76a437"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

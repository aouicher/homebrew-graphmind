class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.210"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.210/graphmind-cli-macos-arm64"
      sha256 "65d7251880e13526e66af8fff329c9ed4e3864ae5cceeb9d6c5932f6f3a6a84e"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.210/graphmind-cli-macos-x64"
      sha256 "dceca1619985dbc6decd9ae7f14e512310252b3f7fe5fb91ca6e1d8ecb190371"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.210/graphmind-cli-linux-x64"
    sha256 "061398837030b1853b82b509c6a5b58f689d0430db79eaf20a09065ae1e1913c"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

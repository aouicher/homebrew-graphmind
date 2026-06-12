class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.209"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.209/graphmind-cli-macos-arm64"
      sha256 "7b9f815ed91c1c66288b6d78d73bcfb1877d6ccb7bd41c3b6022ded0e1ef7bec"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.209/graphmind-cli-macos-x64"
      sha256 "80f6128ee70f164b1483c209947eb454e03f7fabdee9dd473b652e3f01e54bac"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.209/graphmind-cli-linux-x64"
    sha256 "dcb360bd0f1dd448258f8b8b2de8b2b4a17c7e352f3b763cc2022e2bbb74efc9"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

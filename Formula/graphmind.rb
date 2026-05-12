class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.168"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.168/graphmind-cli-macos-arm64"
      sha256 "a3d39a4c6443f805c3ebbfeffc8fd880fc1c2ba2f7917ce0bf6f467e921ba7c2"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.168/graphmind-cli-macos-x64"
      sha256 "49d7bb4987005798e91485578da4e86822a3e817aa9bb85f17d7d81c34cd7420"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.168/graphmind-cli-linux-x64"
    sha256 "46842e61fd8e831e94a44e0722efd5b751686622038962df9b0b7abbc956dbc1"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

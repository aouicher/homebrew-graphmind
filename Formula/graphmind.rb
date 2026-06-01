class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.208"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.208/graphmind-cli-macos-arm64"
      sha256 "59e530e324ce62610a8a478993907ce7ccc4796cc456a7b847e067ff40b78109"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.208/graphmind-cli-macos-x64"
      sha256 "52b7f65321c8a68bfe87867a24541cc9f0551bb284d00a0245df8c59d003443f"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.208/graphmind-cli-linux-x64"
    sha256 "3a3d2923e56a34b8e67f6cd909c021e7095c6002fc454a048a8e40ac8aa5bdc3"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

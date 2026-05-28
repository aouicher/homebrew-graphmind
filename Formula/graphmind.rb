class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.183"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.183/graphmind-cli-macos-arm64"
      sha256 "fcf605352f12f32f9ba3ed45f8c6b6e3b4256ede397e3e14f42cb7b3d517ef9a"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.183/graphmind-cli-macos-x64"
      sha256 "15bb036cf14eba047a0ee203f7f23d2890d6c23fe8df9b6bed8583d2a1a24b11"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.183/graphmind-cli-linux-x64"
    sha256 "841aafe7d340fd4a8494b7487a2e7867f7ce286d01b953c3b341680e852fd13c"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

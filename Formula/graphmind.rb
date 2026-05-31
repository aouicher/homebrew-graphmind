class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.201"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.201/graphmind-cli-macos-arm64"
      sha256 "eb40744839ceec67523592ac3d20dc58affd653c572bc66aa052392077223ead"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.201/graphmind-cli-macos-x64"
      sha256 "d78b0a8b8098a3a4d7230a223f440f7b8c4d268011b368a040857ce1ea3b2cea"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.201/graphmind-cli-linux-x64"
    sha256 "9579d4dc06c69c686177e4454b425c0a094912ab6abd40c9602df7ebcf23453e"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

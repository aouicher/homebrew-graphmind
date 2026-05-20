class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.176"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.176/graphmind-cli-macos-arm64"
      sha256 "16bb370cb6745c0628993524771cb8da0f48d03486b348ee541ded4891a1caf5"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.176/graphmind-cli-macos-x64"
      sha256 "046816ff0f166df16ce55e9328a162fee6e9a6ab5ff2dd6bb9b5a407e5af5085"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.176/graphmind-cli-linux-x64"
    sha256 "f0c0d22872afbc6c72f2ab4b0b60900fd969fec88ed7c62ddbcc8d19899f1260"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

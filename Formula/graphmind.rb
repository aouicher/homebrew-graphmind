class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.215"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.215/graphmind-cli-macos-arm64"
      sha256 "93a4fb7421eae693e699bac02bc53bbc04d0129d4350d289adfcdc8e6dca4ac2"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.215/graphmind-cli-macos-x64"
      sha256 "8638c5022a40b15df56c43a229a1667d48f8a1f8ca000352c4866135ea16ebed"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.215/graphmind-cli-linux-x64"
    sha256 "afa8faf4365719282877fa21245285eb9010c369147e48daa2653ba1ae7a7322"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

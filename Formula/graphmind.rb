class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.184"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.184/graphmind-cli-macos-arm64"
      sha256 "8c03d82267e72dcf734f80c8e7ca9fe6ed6be12c6f35e223f2e870e7e6baed84"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.184/graphmind-cli-macos-x64"
      sha256 "a54cfdfaa5e78b57b98e3a91c8ba52579e46f1de5733330e5cb966024acf31a0"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.184/graphmind-cli-linux-x64"
    sha256 "e91796d74fdbe40b9eedc5b5f198022bd2e20caaa8f87fc2ac15b71f9784a440"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

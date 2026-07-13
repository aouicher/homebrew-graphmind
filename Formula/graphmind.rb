class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.211"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.211/graphmind-cli-macos-arm64"
      sha256 "223c9bb52c1ee05ad3e845da94bbaa46cd97194edf1ba15feed006f0a4cfee2b"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.211/graphmind-cli-macos-x64"
      sha256 "de8a380dd1f5ce8469afeab021664bed0d447627191c008d6dd9ee4decb054ca"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.211/graphmind-cli-linux-x64"
    sha256 "4327464ea0bd0d1bc268d45bc08b15593ba9c2468ebb57f3b4029f530d284892"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

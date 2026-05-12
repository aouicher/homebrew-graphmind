class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.166"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.166/graphmind-cli-macos-arm64"
      sha256 "471768f07d7fa48e6526b32d7fe154a556028c32c75d413c1ac24cda18fd047d"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.166/graphmind-cli-macos-x64"
      sha256 "4ba67ed219127e1844fbc087131ae0a4d224be39d43c1d7a937fa6a6ed627a90"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.166/graphmind-cli-linux-x64"
    sha256 "c96f1634b7e7fa92baa70f5352860b6e4cb65092be42593f2df5c3631bd84484"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

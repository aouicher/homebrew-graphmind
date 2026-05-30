class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.189"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.189/graphmind-cli-macos-arm64"
      sha256 "82d0b3af4c7343d9c02c51717e3bc2e56dd931e6a3dd2b5a75d01ad4171570c0"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.189/graphmind-cli-macos-x64"
      sha256 "f9c13555d5272d00b8531f3d1096642a6ac44322a880e5d6a2cd0c5ebb213318"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.189/graphmind-cli-linux-x64"
    sha256 "57adf3649303f71231ad036e1bcf347723525f47d5279ee6ed11fcac6f6ec55c"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

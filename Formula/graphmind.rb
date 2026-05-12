class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.170"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.170/graphmind-cli-macos-arm64"
      sha256 "2aa5c171fa775b8adaa20f997331dde952dbce578e2aeb8d2aeceba852321350"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.170/graphmind-cli-macos-x64"
      sha256 "571658a3bc9a2f883b002df1ee6bcde5ce41a71482a99d0b1a4c385ed31abba0"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.170/graphmind-cli-linux-x64"
    sha256 "80984edf4e55f6782f2ef5db2fa6a89b69810e1e8d4751e52efedc42ac1de706"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

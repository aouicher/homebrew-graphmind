class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.206"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.206/graphmind-cli-macos-arm64"
      sha256 "5f45c571bf786bcb2268d4253076830ba35ed1226ed42d12b2d5736dd6bb7ddb"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.206/graphmind-cli-macos-x64"
      sha256 "897ce5bf5fd959d38fa97da501d7f86b220eb995bcf9e6c88e9bfc47685be539"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.206/graphmind-cli-linux-x64"
    sha256 "e482faf0b04e6b07235a9e034e521129355a9947b651937883d26e740c0e05b6"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.3/graphmind-cli-macos-arm64"
      sha256 "4ef264713d9b1bca8788688fd6dd166e78c2f93eee50ac84d8995e672f2ea454"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.3/graphmind-cli-macos-x64"
      sha256 "9e02a56681fd2a7413c4851f3917a6990ecda15cca743eef0184b158f7b8426b"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.3/graphmind-cli-linux-x64"
    sha256 "1cddf1b961895a0ad2c0cbbde3696bda7cb326a9f494ee0868e8102d1b695360"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

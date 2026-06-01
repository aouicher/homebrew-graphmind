class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.207"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.207/graphmind-cli-macos-arm64"
      sha256 "bbc7840e5568793f2aa7c2c682897be50ae02d88b4d05f0a498c49abfc273a65"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.207/graphmind-cli-macos-x64"
      sha256 "ef4798a02212b0cf40ea948d5aec2508d63191e58e1df2fce012548376217452"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.207/graphmind-cli-linux-x64"
    sha256 "7f82beae2ec31e13c1bb2eec36fc0504e0b9df9c7f0fcbe1beaabf2b9ae0da76"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

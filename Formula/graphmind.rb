class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.181"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.181/graphmind-cli-macos-arm64"
      sha256 "371e90c4bd721e03742674560134caf1aff4bddc060d10fee38e17d839a8465f"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.181/graphmind-cli-macos-x64"
      sha256 "a2a3ad77cc141d4e3745a202aa4d91b9b2756c00a64c1a4ed1e9a062ae5a2e6c"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.181/graphmind-cli-linux-x64"
    sha256 "ecb788c1b697d8aee8bf8e97cc888ed8b4cec65ac05226dc11ea365b27004df8"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

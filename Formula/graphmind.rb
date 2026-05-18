class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.171"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.171/graphmind-cli-macos-arm64"
      sha256 "e6026471202eaba32d13517ef61a90406b28110570429a374d0f65f24c8e4d9a"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.171/graphmind-cli-macos-x64"
      sha256 "f312b43b105580cb21cb6f546c77337a640589150ebb8ff8d810bb51b71e844b"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.171/graphmind-cli-linux-x64"
    sha256 "e8f131ae5708cec30f794c5dfa8133bf53aab31fe68950269204e71d2da120a9"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

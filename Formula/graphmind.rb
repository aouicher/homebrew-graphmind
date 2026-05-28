class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.188"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.188/graphmind-cli-macos-arm64"
      sha256 "c92b2bce027fe698d89af6f69451b199420909cd49d4a8ee382b48846cbe5251"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.188/graphmind-cli-macos-x64"
      sha256 "f42cc25a720985732800415642524ec43d3b43010143be933d52d7e22f8e8157"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.188/graphmind-cli-linux-x64"
    sha256 "d82be0d23568b35d92900e07ffa4d4f61a40982d28e8ddb9d2a778396d9701f7"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.172"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.172/graphmind-cli-macos-arm64"
      sha256 "2c759d0bc09065e291c44e36690dac30dc6e30c86648a6de41148c2ef5456cd5"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.172/graphmind-cli-macos-x64"
      sha256 "f4338674688ccb96107741080295f43ae34f9199091982d7029265a148a488aa"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.172/graphmind-cli-linux-x64"
    sha256 "ada2f36a29e4fbc8aa97999756f6b95086538501e768a6bc0820b085a208a93e"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

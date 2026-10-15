class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.7/graphmind-cli-macos-arm64"
      sha256 "c944c2a9dcadb20d5ac9ed37088e536d89fc59617eab44138669dc768fcdc7d5"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.7/graphmind-cli-macos-x64"
      sha256 "598858dc87da037c26de19661c928ea2396f2aaf60b753fe35efc256eed28a95"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.7/graphmind-cli-linux-x64"
    sha256 "a694b62b3528b4e5731adaa9f0d7a891f6c248aecad087102bc30b49d8b13e8a"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

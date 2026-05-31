class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.197"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.197/graphmind-cli-macos-arm64"
      sha256 "5b903eb96b40f493071834173e05302cb02b93aa6e639b2e2f2167373f47c4fe"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.197/graphmind-cli-macos-x64"
      sha256 "934c4cc960ffd73f2be267ca46598d237fd1a45649a73f97f3069addcdbf1a05"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.197/graphmind-cli-linux-x64"
    sha256 "cd6860da87db8fdfeca91cdddf8492a621cf139e2ae0264b3701e4b1fabbd194"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

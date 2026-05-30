class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.190"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.190/graphmind-cli-macos-arm64"
      sha256 "bcf567825dbaeab6958873a999a0d8751d8c4876a7ee491007b44397041cd02d"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.190/graphmind-cli-macos-x64"
      sha256 "98c5376b3fd433bbb40354e4cdc6fb562a81ea7d6aa9a541d4907e7992e8d70d"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.190/graphmind-cli-linux-x64"
    sha256 "a96d1ec11e1116c697dd23abe255cb32fd5f9d4e743ca6466f7fd9b2452389ed"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("\#{bin}/graphmind --help")
  end
end

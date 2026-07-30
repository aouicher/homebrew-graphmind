class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.214"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.214/graphmind-cli-macos-arm64"
      sha256 "fea6563e341431ee32a15d06fcdeb34fb7bce84dd739e46d85d66bbe244d53cb"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.214/graphmind-cli-macos-x64"
      sha256 "c6297db20df8812aee738b54223e1d70ce108c76113be54075e2056bbcd8ffba"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.214/graphmind-cli-linux-x64"
    sha256 "c49e39004d51e8cbc9caf14c782f49da4bd5f4c7d1b4d7c4b99581cd6fea2ba7"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

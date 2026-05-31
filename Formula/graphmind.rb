class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.203"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.203/graphmind-cli-macos-arm64"
      sha256 "91f69cab2fbca54646afffb85f19091b910aa83f7bdaf0b91d5ba40f6860120f"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.203/graphmind-cli-macos-x64"
      sha256 "f15e6f3176cd56d391fdaf5e7489a38186d38a9199c95cdde7ee7689fd7a9bab"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.203/graphmind-cli-linux-x64"
    sha256 "43cefbd042d5ec33111c36db8d3d395096cdc40a7533db81108278f4354f789e"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

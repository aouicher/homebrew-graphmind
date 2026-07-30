class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.2.213"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.213/graphmind-cli-macos-arm64"
      sha256 "9db10f2206fa89ad8aa0fc6c00e0c8e64b6245dda9f5ff75daae6566fa7c1666"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.2.213/graphmind-cli-macos-x64"
      sha256 "48b054d3869f1ffcad353719ab496b6f9a4b2b217f255bc6d89f5027ebbec2d7"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.213/graphmind-cli-linux-x64"
    sha256 "ffd440bb7d24afc639a9f5a110266ecccd121bc12e09ee38805d65ae24ce7e82"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

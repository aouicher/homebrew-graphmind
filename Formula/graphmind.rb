class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.2/graphmind-cli-macos-arm64"
      sha256 "a3853f008bfceffce937a2b9a6a49ae12df15b173a593f7c6993e68b20fba101"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.2/graphmind-cli-macos-x64"
      sha256 "0af84a289202a43fbf409acf21664ef742b76e157e93ff524ba4f37f7b230e28"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.2/graphmind-cli-linux-x64"
    sha256 "3898f9837a6926e85f398a0247a4961b18ef5fe3b6dd9db790a076d793f112db"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

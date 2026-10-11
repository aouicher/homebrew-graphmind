class Graphmind < Formula
  desc "Local-first code intelligence CLI with MCP server"
  homepage "https://github.com/aouicher/graphmind"
  license "MIT"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.4/graphmind-cli-macos-arm64"
      sha256 "c49c1287b0ffba4d6bfe1916585c031dd884f20cce3000cc2c3c74cd078cd654"
    else
      url "https://github.com/aouicher/graphmind/releases/download/v0.3.4/graphmind-cli-macos-x64"
      sha256 "cf2adc19a3b8394594668b294438240af00c17c8affddec2ed71013bc54af8e7"
    end
  end

  on_linux do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.4/graphmind-cli-linux-x64"
    sha256 "43f3ba36c9902abc6f83f46b84ea703c170d355f5da8782c91be7abaf65e55ec"
  end

  def install
    binary = Dir["graphmind-*"].first || "graphmind"
    bin.install binary => "graphmind"
  end

  test do
    assert_match "graphmind", shell_output("#{bin}/graphmind --help")
  end
end

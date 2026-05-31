cask "graphmind" do
  version "0.2.201"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.201/GraphMind-macos-arm64.dmg"
    sha256 "be5ef4d89f8379dd80051a61b09d68af5a5a5b6d2f856d5a8e042bbe1fa6e272"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.201/GraphMind-macos-x64.dmg"
    sha256 "c6e06939f0e2b045f7f214c0ec845764b0c065b0ae7576566185c9f6432ac244"
  end

  name "GraphMind"
  desc "Local-first code intelligence with MCP server"
  homepage "https://getgraphmind.com"

  app "GraphMind.app"

  zap trash: [
    "~/.graphmind",
    "~/Library/Application Support/GraphMind",
    "~/Library/Preferences/com.graphmind.app.plist",
    "~/Library/Caches/com.graphmind.app",
  ]
end

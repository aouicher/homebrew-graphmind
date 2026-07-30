cask "graphmind" do
  version "0.2.212"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.212/GraphMind-macos-arm64.dmg"
    sha256 "25c50bc5a5e41811ee425456093e61056bf21d8e80856c09e10ce5f2684d9d96"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.212/GraphMind-macos-x64.dmg"
    sha256 "da68b0c215a5f05b2dbc683f6dff661806e3c8ddab93bddc043c7c45b9fd42a1"
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

cask "graphmind" do
  version "0.2.202"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.202/GraphMind-macos-arm64.dmg"
    sha256 "346146cc2ced8cf8f7e6c5fca83126b5587eb7577ecbd87ff4f5d4b159ab4481"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.202/GraphMind-macos-x64.dmg"
    sha256 "5ac21101b5e3d1f42156fe50085eb56755b760033541d4e96d9be86ab5f219ba"
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

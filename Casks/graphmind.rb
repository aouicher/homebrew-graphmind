cask "graphmind" do
  version "0.2.215"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.215/GraphMind-macos-arm64.dmg"
    sha256 "203868502f05271744bff5b5b7b410fffc376eb9e38e3d7ce87d3576a6a3558e"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.215/GraphMind-macos-x64.dmg"
    sha256 "95d9e186b57ec4ea109399338e698deaf21f8a1edd9bf142122f593f0381c55a"
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

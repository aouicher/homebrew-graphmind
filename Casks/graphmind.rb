cask "graphmind" do
  version "0.2.209"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.209/GraphMind-macos-arm64.dmg"
    sha256 "654bb171abda3f27ea708ac923fa46b9c24121c0b9b069160f3bd77e85d8d0b4"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.209/GraphMind-macos-x64.dmg"
    sha256 "8279de09fb4c7fde877391c97c2200e616d68415c2462969d871e941b0cba780"
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

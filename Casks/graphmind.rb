cask "graphmind" do
  version "0.2.207"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.207/GraphMind-macos-arm64.dmg"
    sha256 "811fe789c3723a388d1f722f3c3f44daab0d51536aeccbd1e15d069a4b87f618"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.207/GraphMind-macos-x64.dmg"
    sha256 "406a2a532cd71d74e9c3930df921fd8c29a172ce21b899116bcf895d6f6f0109"
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

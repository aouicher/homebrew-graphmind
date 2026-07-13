cask "graphmind" do
  version "0.2.210"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.210/GraphMind-macos-arm64.dmg"
    sha256 "8745b10cb26d81dde37b4c72ed21f74917e4a6fc24ca9b05babb12b3e49523b6"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.210/GraphMind-macos-x64.dmg"
    sha256 "0a6b122c85476b7675665d1d9c454161dd7e1cb13ea30046e5e6e66e29352372"
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

cask "graphmind" do
  version "0.2.197"
  sha256 arm:   "ae0c47577bdb5a2ff5470563dc5b7331409abda4e32d2b0c47fed1a05eee3b67",
         intel: "617a8ba52dc898232c96ae6d0d4df6326dad275d7ac1489041d2c9a07feaf6bc"

  url "https://github.com/aouicher/graphmind/releases/download/v#{version}/GraphMind-macos-#{arch == :arm64 ? "arm64" : "x64"}.dmg"
  name "GraphMind"
  desc "Local-first code intelligence with MCP server — desktop app"
  homepage "https://getgraphmind.com"

  app "GraphMind.app"

  zap trash: [
    "~/.graphmind",
    "~/Library/Application Support/GraphMind",
    "~/Library/Preferences/com.graphmind.app.plist",
    "~/Library/Caches/com.graphmind.app",
  ]
end

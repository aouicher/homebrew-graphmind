cask "graphmind" do
  version "0.3.6"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.6/GraphMind-macos-arm64.dmg"
    sha256 "a1c41ca8b0d5eb8eba18eb0bc10f0c3d84f0612e86e912f46eb441d0727b2a5e"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.6/GraphMind-macos-x64.dmg"
    sha256 "2d93f16dfb93718e6c5ddc9f39344103f5c0f6898570bc69abec77501e5d4d5a"
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

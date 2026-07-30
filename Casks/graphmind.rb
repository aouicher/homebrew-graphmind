cask "graphmind" do
  version "0.2.214"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.214/GraphMind-macos-arm64.dmg"
    sha256 "532c3b1fa0ac470de23bfab7a8eb8d366c5d0264ba514d850e5ffc2630c2d04a"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.214/GraphMind-macos-x64.dmg"
    sha256 "ed2703abf051d16c34e5680678f8a827c63872db594a3fdbf2d29394f19e8b55"
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

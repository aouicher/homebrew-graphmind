cask "graphmind" do
  version "0.3.2"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.2/GraphMind-macos-arm64.dmg"
    sha256 "fc010103ad1853959e9656daa5f87bcb18afadedd3838196de9b92a7d59856bb"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.2/GraphMind-macos-x64.dmg"
    sha256 "e6c673b11b603236a4e49f3885212dd9342d7008a4016745890bfb271438250a"
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

cask "graphmind" do
  version "0.2.208"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.208/GraphMind-macos-arm64.dmg"
    sha256 "90f3bdaf5cf014ad35da5fc302b646021df35c209a7cd64de4e081774abdf8a2"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.208/GraphMind-macos-x64.dmg"
    sha256 "f9b6709da4c9619448db610051def769701fb4190eed7e3e40446751c80f6e03"
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

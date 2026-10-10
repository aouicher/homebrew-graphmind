cask "graphmind" do
  version "0.3.0"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.0/GraphMind-macos-arm64.dmg"
    sha256 "f1a5f86d00b0504ed9131afed58f6279fd23d1f1f5d906ab0bcbb650e915938d"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.0/GraphMind-macos-x64.dmg"
    sha256 "9a754430ae7654aafb11caa8298a7c2118d849d261f54df22715035cc0f3ce41"
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

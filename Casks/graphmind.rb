cask "graphmind" do
  version "0.2.204"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.204/GraphMind-macos-arm64.dmg"
    sha256 "bae8fd966717a884dba9d57e51d5894efba3de07cae49083a4a8a8249330e694"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.204/GraphMind-macos-x64.dmg"
    sha256 "6537e0630f8eb412b96f316c4c79ba87dd04ef317693cd6ccbe6a2ce06f1286d"
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

cask "graphmind" do
  version "0.3.7"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.7/GraphMind-macos-arm64.dmg"
    sha256 "cd705d09d2f0ef8f81a37a01769ae0e756cf945963e9ae0068918ec27c7a04d5"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.7/GraphMind-macos-x64.dmg"
    sha256 "1fcc59ef58f3083e76838ea93ce171dd549c048defd4a0ed4fdfa301cbd9f1a8"
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

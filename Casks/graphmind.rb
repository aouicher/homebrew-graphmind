cask "graphmind" do
  version "0.2.211"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.211/GraphMind-macos-arm64.dmg"
    sha256 "748ee8e60ef3e2a7ecdc801c8eeb64ce63bee1e6e324960c7ad83be567a4d6e6"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.211/GraphMind-macos-x64.dmg"
    sha256 "5ceac1bfb65a9337f24444aec950fd147be798379aa34e590ea78d293b9cde27"
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

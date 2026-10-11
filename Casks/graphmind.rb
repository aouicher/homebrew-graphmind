cask "graphmind" do
  version "0.3.4"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.4/GraphMind-macos-arm64.dmg"
    sha256 "45449aeb67f8514e39311b882561d48b0dc5ba6a75550b52ac2c1665691b26c2"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.4/GraphMind-macos-x64.dmg"
    sha256 "daaff54ccaf44fcf1f7e39c1880c8f20de07916f3609c85e6374f396493a185a"
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

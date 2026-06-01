cask "graphmind" do
  version "0.2.206"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.206/GraphMind-macos-arm64.dmg"
    sha256 "290353d4f041b162ff89a4c23f60c812c0d0bccf68db7e33dd1e77e5fe2c9c0f"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.206/GraphMind-macos-x64.dmg"
    sha256 "53b0489d04df32225f938b61932b6f538a3ab57a1d49f77d037c5036b534c530"
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

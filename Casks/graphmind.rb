cask "graphmind" do
  version "0.2.205"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.205/GraphMind-macos-arm64.dmg"
    sha256 "3a46c5e80cec6c86f64dd3893938591506aa804fdd3d5a148115eb5ad3f75af3"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.205/GraphMind-macos-x64.dmg"
    sha256 "df6e36084d5e447bcc2196f20184aaff0fc861927bd2cb7937b36c373c772132"
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

cask "graphmind" do
  version "0.2.213"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.213/GraphMind-macos-arm64.dmg"
    sha256 "237bf5f35b845d0b3d8001d548b590382edb9e77ed3d9bbfb66f7d00b52ebd67"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.213/GraphMind-macos-x64.dmg"
    sha256 "0b568681580af1e26ab03ef55e819cf8ac4bcf836c0648fc9b2dccae84df38a3"
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

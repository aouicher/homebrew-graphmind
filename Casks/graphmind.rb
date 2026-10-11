cask "graphmind" do
  version "0.3.3"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.3/GraphMind-macos-arm64.dmg"
    sha256 "aca77bf0de8da0849888f0162a1da6fc202ef1ca20c43e43373e38adf810eb0a"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.3/GraphMind-macos-x64.dmg"
    sha256 "a37ba540a35f620d608537baadbad68069742e9e52a32f8f4a2d984fbf4b8ae9"
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

cask "graphmind" do
  version "0.3.5"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.5/GraphMind-macos-arm64.dmg"
    sha256 "f6821487f1a3c50268928a8d8cc2790870fdac918b0da6714599051fa6ad2784"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.5/GraphMind-macos-x64.dmg"
    sha256 "442c19d94ba0fdda4984950c45c114805cf18bfda446d874a50f121ea8597530"
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

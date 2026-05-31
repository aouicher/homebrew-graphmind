cask "graphmind" do
  version "0.2.203"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.203/GraphMind-macos-arm64.dmg"
    sha256 "79584e0ef35497406fd83064abb84e2f1956925a3d22a28a266b5426e1ab1b37"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.2.203/GraphMind-macos-x64.dmg"
    sha256 "f338a74b7d356fbaffe1d00503c9749fc687d25cc7d31bed2998d0404fa28a11"
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

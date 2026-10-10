cask "graphmind" do
  version "0.3.1"

  on_arm do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.1/GraphMind-macos-arm64.dmg"
    sha256 "65b1d6c7ab8c5c11801b6a0fcbde0d461b18d74f0a5981fd9ceafe86d046168e"
  end

  on_intel do
    url "https://github.com/aouicher/graphmind/releases/download/v0.3.1/GraphMind-macos-x64.dmg"
    sha256 "a832948b9077605ace1116d3500b31be129e35c3be65f6fb99978fcf380895f1"
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

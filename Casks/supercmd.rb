cask "supercmd" do
  arch arm: "arm64", intel: "x64"

  version "1.0.22"
  sha256 arm:   "4f91a3a3acc4787a9682c5356f9870b1f91e59e8fd24f75b573f5071a5949c33",
         intel: "8a034268501db16ac130853505d6d82c9e2f07e6cd929bb316d8fe3085f38f86"

  url "https://github.com/SuperCmdLabs/SuperCmd/releases/download/#{version}/SuperCmd-#{version}#{"-arm64" if Hardware::CPU.arm?}.dmg",
      verified: "github.com/SuperCmdLabs/SuperCmd/"

  name "SuperCmd"
  desc "Open-source Raycast-compatible launcher with voice, AI, and memory"
  homepage "https://supercmd.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SuperCmd.app"

  zap trash: [
    "~/Library/Application Support/SuperCmd",
    "~/Library/Application Support/com.supercmd.app",
    "~/Library/Caches/com.supercmd.app",
    "~/Library/Caches/com.supercmd.app.ShipIt",
    "~/Library/HTTPStorages/com.supercmd.app",
    "~/Library/Logs/SuperCmd",
    "~/Library/Preferences/com.supercmd.app.plist",
    "~/Library/Saved Application State/com.supercmd.app.savedState",
  ]
end

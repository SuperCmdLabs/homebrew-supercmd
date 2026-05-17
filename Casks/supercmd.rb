cask "supercmd" do
  arch arm: "arm64", intel: "x64"

  version "1.0.24"
  sha256 arm:   "138b5f99ecca291c3728dbe3608dfdc51e3f85e682273093ba1490d15512e2a5",
         intel: "f86975e05c7fce4f967d46c21de8e0bcb5b6f249892541584571a6585d125fa5"

  url "https://github.com/SuperCmdLabs/SuperCmd/releases/download/#{version}/SuperCmd-#{version}#{"-arm64" if Hardware::CPU.arm?}.dmg",
      verified: "github.com/SuperCmdLabs/SuperCmd/"

  name "SuperCmd"
  desc "Open Source, AI Native MacOS Launcher"
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

cask "supercmd" do
  arch arm: "arm64", intel: "x64"

  version "1.0.26"
  sha256 arm:   "33d1fd9cfdb07cd28ccd5517a4f540a17d645aedf1cb36d9e97e4453cac45171",
         intel: "0a828f9002e6b2bd3be479d73983d5f121efb5d013f8a2f8f52fd828eed1591c"

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

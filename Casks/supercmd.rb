cask "supercmd" do
  arch arm: "arm64", intel: "x64"

  version "1.0.24"
  sha256 arm:   "1e380aa224748308862ece3ebd773ba94a3588dba5a903803301d19fc858450a",
         intel: "574aca9e3598c500dbd2360993d4a74c7dc732963b3811671b5d80632cdab0b1"

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

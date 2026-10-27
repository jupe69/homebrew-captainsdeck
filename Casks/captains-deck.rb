cask "captains-deck" do
  version "1.5.6.1"
  sha256 "5fe4e026bf07bf07e544b5b8596f086807313a8d0ab46a75097a61eab767403d"

  url "https://captains-deck.com/downloads/CaptainsDeck-#{version}.dmg"
  name "Captain's Deck"
  desc "Dual-pane file manager for macOS inspired by Norton Commander"
  homepage "https://captains-deck.com/"

  livecheck do
    url "https://captains-deck.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sonoma"

  app "Captain's Deck.app"

  zap trash: [
    "~/Library/Application Support/Captain's Deck",
    "~/Library/Caches/com.captainsdeck.app",
    "~/Library/HTTPStorages/com.captainsdeck.app",
    "~/Library/Preferences/com.captainsdeck.app.plist",
    "~/Library/Saved Application State/com.captainsdeck.app.savedState",
  ]
end

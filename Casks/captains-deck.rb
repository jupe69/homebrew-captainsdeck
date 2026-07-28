cask "captains-deck" do
  version "1.4.13"
  sha256 "2a57f9a6628a57e93e92bba2dfd96dddb0573966cb9990cb1b9918d78712fa91"

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

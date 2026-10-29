cask "captains-deck" do
  version "1.5.7"
  sha256 "72611cf9149b31580bbb62cfbfe8ec85a36d512b88d1d311406f25617416e3a1"

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

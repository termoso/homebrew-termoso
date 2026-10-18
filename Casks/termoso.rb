cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.7"
  sha256 arm:   "ef0f3060cbcf36d5781981fbf0d65f592d42db7b476342a6b3916a2dc3bef00b",
         intel: "6eea5b9186c61349b8d7387e60ae5d6ba87d91cbda3b9b80137e805fec576646"

  url "https://github.com/termoso/termoso/releases/download/v#{version}/Termoso_#{version}_#{arch}.dmg",
      verified: "github.com/termoso/termoso/"
  name "Termoso"
  desc "SSH, SFTP and terminal client with end-to-end encrypted sync"
  homepage "https://termoso.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Termoso.app"

  zap trash: [
    "~/Library/Application Support/com.termoso.desktop",
    "~/Library/Caches/com.termoso.desktop",
    "~/Library/Preferences/com.termoso.desktop.plist",
    "~/Library/Saved Application State/com.termoso.desktop.savedState",
    "~/Library/WebKit/com.termoso.desktop",
  ]
end

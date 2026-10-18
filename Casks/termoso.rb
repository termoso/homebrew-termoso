cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "5f73f5b92b47c0a27398de34d6c9c77cf3a24f7e383503e84d1e7a682a048ca9",
         intel: "e62ec7d32047f7d4c8250623431b547d70732a34b9950bd39c3259e714bc1da5"

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

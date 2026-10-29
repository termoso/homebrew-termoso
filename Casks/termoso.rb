cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "881867f5bf7c730491df8d5e7c0144c3ed9d6d8f066399985224058ecf6ac1a2",
         intel: "830fa6afc3b0321f7c8978a373dcb51b2e3a4e92ec9306e0ede8b7716e4a8aeb"

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

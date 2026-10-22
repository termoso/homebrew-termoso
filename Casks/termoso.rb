cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "4279b27071ecc6fc152afe4cbc4eccae04bb9a08bf4ddea420529f124a3d84e3",
         intel: "e1baa18edeff8f4e499b7877c7c53787bb4a8315211f2700a023c97876c2551f"

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

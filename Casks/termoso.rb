cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "05c06e4a02cba702306d6599b015f5f9407aface1d00191bb0fb141ce89946c4",
         intel: "3781d9ed0fae0f91377e8ac41d028e0b4fdfd7316eb62a2b07e96d6a1b6ee3d8"

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

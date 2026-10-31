cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.4"
  sha256 arm:   "6d9e6b9e5a3288fd571e83d1b0d1b46930d6ad8c5e830cc3de0cc0bbeda3b60d",
         intel: "fba247c379ebc6735f04473d824e65d39fad3ddb166f68a900db972911507337"

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

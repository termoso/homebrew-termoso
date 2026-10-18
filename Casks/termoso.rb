cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "9c88d40387a6abc9699d873e28279376b1e6da35ac0978c5632713a8a9c43278",
         intel: "0e9bcc48eb0f4ad49476bb2f20bbe5810fdd901579196dc575b3bf28a6e317c6"

  url "https://github.com/rep0rtDev/termoso/releases/download/v#{version}/Termoso_#{version}_#{arch}.dmg",
      verified: "github.com/rep0rtDev/termoso/"
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

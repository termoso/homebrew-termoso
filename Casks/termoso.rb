cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.9"
  sha256 arm:   "a510fcb494665b3817d4f844e18c7f2e88cf70475d7211bc54b84acaa563950b",
         intel: "4d9cd051d5cfa66607b2fbd36780c0ffbe66cf9d1b13be9637e319fc637d6361"

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

cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "f8af94f0326aafa80dc45ce5d1c516734020dab4b2b52714ba7887ef87eaf469",
         intel: "0c617cc4d31120f493a1e9bbab4dc53f1736620fb33d597619115e6a9cc33fd2"

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

cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "7d8747003e18da7d95ce684176c0abcc567083eb93a2bb647a56a17cbaddfbc9",
         intel: "cd6d128255bbecbecc5e546f4bc270f74d1658b2a2e7477eff58326f0547866b"

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

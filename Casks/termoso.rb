cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "7350c75907c577c91208368b8aab684d720c95b3ad92ca64d7f7433d7b8d4d91",
         intel: "72ecfb76ba9cd5f4011bee749a3c36feb5195fb1e72598e950db471b01c368e8"

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

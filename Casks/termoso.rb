cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "41ce8002996885e5aab2ae8e782da9c4dd9fe3a657124320970dc1831f959ad0",
         intel: "583d94d3e411353c2bfb2f1f8cea184ad95c93e1e5d4578e94f3acbd2a186186"

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

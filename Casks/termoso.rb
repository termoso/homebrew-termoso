cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "bfd58a3e1afcbe1cbf6871359220c7cdd10d47f5371e1f353fa57f3947d7dbf3",
         intel: "e940d6a7a4c3c2504e43706715d48e3e2e6da3113d055f5b96a106c34fa54442"

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

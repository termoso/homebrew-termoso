cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "1d302cc4871a6875490a1a8c6dd39847b3ae7e1a1e3e44eadf0dc0de155c42a9",
         intel: "1978086e647e68dea66d61a2929db0f989a0743d7660191800c784e97a81ec13"

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

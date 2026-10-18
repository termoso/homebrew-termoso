cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "cc9136d9e4be808cf0d7d03a2d29c96c15e444b99825b294efb321244093bd3c",
         intel: "3f185255944c28cf452196ec816ab8f6f99eb06530e5ffe776040c00c01bffa1"

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

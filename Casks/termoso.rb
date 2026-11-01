cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.6"
  sha256 arm:   "4278faf7caa5ddfd6245083bac4c4f1dd235800b5b93619a2e74ef7f81a0fbea",
         intel: "87c41635ac28beaee40af081d5a156f6473b63770bfe95910d50ecc7cdf3c15d"

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

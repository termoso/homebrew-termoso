cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.5"
  sha256 arm:   "b68fdd2c61cba4c8d0d0759487cf7eaec212e6d181e349354755d6dac0049c0c",
         intel: "90a8978b07a2c435bacc3988b342a5283513b186e7d215dbc9d5831ab7c1a7b9"

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

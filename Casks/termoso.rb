cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.6"
  sha256 arm:   "df6bbe0876791d8b1c66a2d82463d75c6ea6a2191e86786cfb75d0138db8f105",
         intel: "134bba50dca24cc32845a53510da5992250cf110b63e9fd47286d137337a5d5d"

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

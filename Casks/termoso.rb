cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.8"
  sha256 arm:   "0569f72f38761ba2dc47b280836932112e011bc9ed2564a525e178d0ef5bf5a2",
         intel: "c1e7b4427da33a49b711e1caabd663780d4795ff4b37fb57573f5779222eb09b"

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

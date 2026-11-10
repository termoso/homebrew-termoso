cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "4ce910d458d3df3e4c0cc3620c7cf3ab4910c61095fcb7d3da5879fcce48b730",
         intel: "9195942de4532bbeaa47c810092d515581fb37da7fcccf2226f25b7d5937d432"

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

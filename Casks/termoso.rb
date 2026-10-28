cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.2"
  sha256 arm:   "aae9e2bc75f38a8df6fe59e34bf6b6abfff6f8517206eda3701cd832a30f25b1",
         intel: "065ae518a6dcef2f2ae8d0435ba492b453a2dc984fe66a35a4787720a756c4b0"

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

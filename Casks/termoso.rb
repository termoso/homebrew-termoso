cask "termoso" do
  arch arm: "aarch64", intel: "x64"

  version "0.11.7"
  sha256 arm:   "ce090a3f21374888006932da84ea58b00bb181ff34a3c736cc93c06a0ad58b0b",
         intel: "f8b7686546b60ea7371e5c47eed94212fd4bc348c36ef260bd201a98ad0fe104"

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

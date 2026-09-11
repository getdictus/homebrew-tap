cask "dictus" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.0-test"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "1111111111111111111111111111111111111111111111111111111111111111"

  url "https://github.com/getdictus/dictus-desktop/releases/download/v#{version}/Dictus_#{version}_#{arch}.dmg"
  name "Dictus"
  desc "Offline voice dictation with global shortcuts"
  homepage "https://getdictus.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Dictus.app"

  zap trash: [
    "~/Library/Application Support/com.dictus.desktop",
    "~/Library/Caches/com.dictus.desktop",
    "~/Library/Preferences/com.dictus.desktop.plist",
    "~/Library/Saved Application State/com.dictus.desktop.savedState",
    "~/Library/WebKit/com.dictus.desktop",
  ]
end

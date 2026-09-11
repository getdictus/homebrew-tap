cask "dictus" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "caf0fa43e41bd28e007a774ca835f16560a1a3dfdee16dd7839b15ebf4dd26fc",
         intel: "bfd1ded6636172ee453c8d13ed41b39a753d00a99a32e355005d128438dc535d"

  url "https://github.com/getdictus/dictus-desktop/releases/download/v#{version}/Dictus_#{version}_#{arch}.dmg"
  name "Dictus"
  desc "Offline voice dictation with global shortcuts"
  homepage "https://getdictus.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Dictus.app"

  zap trash: [
    "~/Library/Application Support/com.dictus.desktop",
    "~/Library/Caches/com.dictus.desktop",
    "~/Library/Preferences/com.dictus.desktop.plist",
    "~/Library/Saved Application State/com.dictus.desktop.savedState",
    "~/Library/WebKit/com.dictus.desktop",
  ]
end

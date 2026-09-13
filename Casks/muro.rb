cask "muro" do
  version "5.0"
  sha256 "c7d310d8d6177c7cf01a9b7bd3eee94ea5d81812f8543371a29e86de44e160cb"

  url "https://github.com/MrRockySL/Muro/releases/download/v#{version}/Muro-#{version}.dmg"
  name "Muro"
  desc "Native live video wallpapers with multi-display support"
  homepage "https://github.com/MrRockySL/Muro"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Muro.app"

  uninstall quit: "com.mrrockysl.muro"

  zap trash: [
    "~/Library/Application Scripts/com.mrrockysl.muro.wallpaper-extension",
    "~/Library/Application Support/Muro",
    "~/Library/Caches/com.mrrockysl.muro",
    "~/Library/Caches/Muro",
    "~/Library/Containers/com.mrrockysl.muro.wallpaper-extension",
    "~/Library/HTTPStorages/com.mrrockysl.muro",
    "~/Library/Preferences/com.mrrockysl.muro.plist",
    "~/Library/Saved Application State/com.mrrockysl.muro.savedState",
  ]
end

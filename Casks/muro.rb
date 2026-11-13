cask "muro" do
  version "6.1.1"
  sha256 "7db6d09ccfaafd6f703f34e4b56e072ddcc256ad4d9bb3927c7937503b01f820"

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

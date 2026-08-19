cask "muro" do
  version "2.0"
  sha256 "ddc86db7a71b9bf22c2c89a4bfece62b5d10ca02f0ecc31faeffe1f1899a6899"

  url "https://github.com/MrRockySL/Muro/releases/download/v#{version}/Muro-#{version}.dmg"
  name "Muro"
  desc "Native live video wallpapers with multi-display support"
  homepage "https://github.com/MrRockySL/Muro"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Muro.app"

  zap trash: [
    "~/Library/Application Support/Muro",
    "~/Library/Caches/Muro",
    "~/Library/Preferences/com.mrrockysl.muro.plist",
  ]
end

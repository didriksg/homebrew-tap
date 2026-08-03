cask "crisp" do
  version "1.3.2"
  sha256 "2092d8a92f9d25cfdf41a239b7addd1aa09791c57696e464ce0c57c9be26f072"

  url "https://github.com/didriksg/Crisp/releases/download/v#{version}/Crisp.dmg"
  name "Crisp"
  desc "Menu bar display manager: DDC brightness, HiDPI, presets, virtual displays"
  homepage "https://github.com/didriksg/Crisp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Crisp.app"

  zap trash: [
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end

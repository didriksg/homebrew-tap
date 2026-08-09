cask "crisp" do
  version "1.4.0"
  sha256 "5f43de619be4a225d76af43ff1352b80000d02ba33bd2508c9fdab2a34431357"

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

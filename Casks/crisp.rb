cask "crisp" do
  version "1.3.1"
  sha256 "41fc7631cf7f284f93d8883d07985299f277781d4035e14532a9853abdb49792"

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

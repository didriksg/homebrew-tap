cask "crisp" do
  version "1.4.1"
  sha256 "4dfbd5d3f66cddab3bad6b2bdb323ce83877087f246708c10c7646033ac2f084"

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

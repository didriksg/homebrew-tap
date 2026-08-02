cask "crisp" do
  version "1.3.0"
  sha256 "c8d08018a3fbfa5a07ab768dda245794aa53a9fbcb03cb82db86ec430722f7f8"

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

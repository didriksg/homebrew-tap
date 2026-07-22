cask "crisp" do
  version "1.0.0"
  sha256 "d8338c9d85f22929d6b4eb38d3a1065f7841de9f8c3523c989c8f2af89808532"

  url "https://github.com/didriksg/Crisp/releases/download/v#{version}/Crisp.dmg"
  name "Crisp"
  desc "Menu bar display manager: DDC brightness, HiDPI, presets, virtual displays"
  homepage "https://github.com/didriksg/Crisp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Crisp.app"

  caveats do
    unsigned_accessibility "Crisp"
  end

  zap trash: [
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end

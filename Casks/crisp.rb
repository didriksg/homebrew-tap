cask "crisp" do
  version "1.0.3"
  sha256 "9eb9ea7a7a4dc42cb2e9c948fa7cafc9c4e6ae641c2c94de70dff71a6c6feef0"

  url "https://github.com/didriksg/Crisp/releases/download/v#{version}/Crisp.dmg"
  name "Crisp"
  desc "Menu bar display manager: DDC brightness, HiDPI, presets, virtual displays"
  homepage "https://github.com/didriksg/Crisp"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Crisp.app"

  caveats <<~EOS
    Crisp is ad-hoc signed, not notarized. If macOS blocks the first launch,
    right-click Crisp.app and choose Open, or install with --no-quarantine.
  EOS

  zap trash: [
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end

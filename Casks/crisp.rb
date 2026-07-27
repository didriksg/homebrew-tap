cask "crisp" do
  version "1.1.1"
  sha256 "c8b72a963acd14be88066429766fb8981314f373b6c4902b014ce142d811bc21"

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

  caveats <<~EOS
    Crisp is ad-hoc signed, not notarized. If macOS blocks the first launch,
    right-click Crisp.app and choose Open, or install with --no-quarantine.
  EOS

  zap trash: [
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end

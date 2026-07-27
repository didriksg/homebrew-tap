cask "crisp" do
  version "1.1.0"
  sha256 "aecf50f45a8495f6eaaff989a62e2e47ad3c388dedf7aec7b748237a68b4cd20"

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

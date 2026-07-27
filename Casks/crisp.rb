cask "crisp" do
  version "1.2.0"
  sha256 "94eb972071e0c6daca61615e1f85d45e0565b866a0cf08854e5e4aba783ba48d"

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

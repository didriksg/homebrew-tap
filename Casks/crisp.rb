cask "crisp" do
  version "1.0.0"
  sha256 "b009df72e36aaee837673c72d15e7db9e06d24e6906739e410a82291f5dc0c86"

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

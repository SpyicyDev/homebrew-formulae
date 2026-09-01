# frozen_string_literal: true

cask "awake" do
  version "1.1.0"
  sha256 "f3e381f787a6eb8eee2eec1ef994bf72f878147e2c9b808a151ed76dbfebc9a7"

  url "https://github.com/mackhaymond/Awake/releases/download/v#{version}/Awake-v#{version}.zip"
  name "Awake"
  desc "Menu-bar app that shows who is keeping the machine awake"
  homepage "https://github.com/mackhaymond/Awake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Awake.app"

  zap trash: "~/Library/Preferences/com.mackhaymond.Awake.plist"

  caveats <<~EOS
    Awake is ad-hoc signed (not notarized), so Gatekeeper blocks the first
    launch. Right-click Awake.app -> Open once, or run:

      xattr -dr com.apple.quarantine /Applications/Awake.app
  EOS
end

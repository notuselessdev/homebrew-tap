cask "cantio" do
  version "0.1.0"
  sha256 "5341f1590d695aa635b67be076615a22e70f5a6e470d9fcf48ea1b36d6b25fda"

  url "https://github.com/notuselessdev/cantio/releases/download/v#{version}/Cantio-#{version}.dmg"
  name "Cantio"
  desc "Floating Spotify lyrics for the menu bar"
  homepage "https://github.com/notuselessdev/cantio"

  # Unsigned (no Apple Developer ID). Install with --no-quarantine so
  # Gatekeeper doesn't block first launch.
  auto_updates false
  depends_on macos: :sonoma

  app "Cantio.app"

  zap trash: [
    "~/Library/Application Support/com.mayronalves.cantio",
    "~/Library/Caches/com.mayronalves.cantio",
    "~/Library/Preferences/com.mayronalves.cantio.plist",
  ]

  caveats <<~EOS
    Cantio is not signed with an Apple Developer ID. Install with:
      brew install --cask --no-quarantine cantio
    If you already installed it and macOS blocks launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Cantio.app"
  EOS
end

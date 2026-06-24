cask "cantio" do
  version "1.0.1"
  sha256 "e8460b5c6093c6e99f63d6581df1f31d8e81421b75ecc8012279027a91729c4e"

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

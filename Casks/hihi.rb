cask "hihi" do
  version "0.1.0"
  sha256 "ec2ecfda557207fed57f9cdc0e73016a6a61cf2a7bb24aaf3a3372a16de4768b"

  url "https://github.com/notuselessdev/hihi/releases/download/v#{version}/hihi-#{version}.dmg"
  name "Hihi"
  desc "Michael Jackson moonwalks across your screen at random intervals"
  homepage "https://github.com/notuselessdev/hihi"

  depends_on macos: ">= :ventura"

  app "MoonWalk.app"

  zap trash: [
    "~/Library/Preferences/dev.notuseless.MoonWalk.plist",
  ]
end

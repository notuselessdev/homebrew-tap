cask "hihi" do
  version "0.1.0"
  sha256 "c16d96210267044b0713ecc27efa8f4ac9fe88efaf014e7ac6082a8598870441"

  url "https://github.com/notuselessdev/hee-hee/releases/download/v#{version}/hee-hee-#{version}.dmg"
  name "hee-hee"
  desc "Michael Jackson dances across your screen at random intervals"
  homepage "https://github.com/notuselessdev/hee-hee"

  depends_on macos: ">= :ventura"

  app "hee-hee.app"

  zap trash: [
    "~/Library/Preferences/dev.notuseless.hee-hee.plist",
  ]
end

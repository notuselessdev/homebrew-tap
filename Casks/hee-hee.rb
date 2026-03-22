cask "hee-hee" do
  version "0.1.0"
  sha256 "934b073b92093b60801c33367b37fdd354eaa178a8d81b5f4c0392bf2d8b3cdb"

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

cask "sigmaos" do
  version "0.28.0.2"
  sha256 "9f0895cc1ca41c078945ddb8d9fbffb2284cc479d1759a77b54b187f9038c3cc"

  url "https://releases.sigmaos.com/SigmaOS-#{version}.dmg"
  name "sigmaos"
  desc "Web browser"
  homepage "https://sigmaos.com/"

  livecheck do
    url "https://releases.sigmaos.com/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SigmaOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.sigmaos.sigmaos.macos",
    "~/Library/Containers/com.sigmaos.sigmaos.macos",
  ]
end

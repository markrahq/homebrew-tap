cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.3"
  sha256 arm: "c4c03213d461d8d72fa2c951ac7a1eea2246f3eeaacad94da48cd6bdf44528c9",
         intel: "d0978b71733ade06f2bdf8d781ae0241766706b7a574c416b0c0d87dec26a068"

  url "https://github.com/markrahq/markra/releases/download/v#{version}/Markra_#{version}_macos_#{arch}.dmg",
      verified: "github.com/markrahq/markra/"

  name "Markra"
  desc "AI-native Markdown editor"
  homepage "https://github.com/markrahq/markra"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Markra.app"
end

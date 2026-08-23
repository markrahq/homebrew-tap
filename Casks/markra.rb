cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.9.0"
  sha256 arm: "c754e112c87950dcb30fdc3e44da8643adca2fa48d3c30a0ea6bed4d977ad029",
         intel: "fbc6e14afd795f0e1bbf2aebbaff7a6ffb67cf95ccddf8be8a57d31a6b99b82c"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.7.4"
  sha256 arm: "eb4ae35a9410ba9c9f73aa46c889843245f13cba23cf0e32cafb462c91ff2c88",
         intel: "057f6edf7dcd96319aa5eaa5c3643dab717821b04ea3462f32c9c5f178109874"

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

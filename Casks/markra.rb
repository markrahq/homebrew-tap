cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.4"
  sha256 arm: "af8abd3b3faada248cbe2ed31dd6d6ed3564ccc4d67994ea97ab92d8620f0ee4",
         intel: "91722455655d30e47935228263f8ca686ea2736af6eb1fd5c729011d851defc4"

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

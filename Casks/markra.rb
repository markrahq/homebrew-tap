cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.5"
  sha256 arm: "9b719b5a64b1393aa96fe3c4f12d5a87ca0379c777daf103f19f30ade2716c7f",
         intel: "b08e42c710c633ed48430c1c9246ce10c3c0d63222afef48aebd8b913ae4e5b5"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm: "a4c30ba3f2d8c7a1094b17e7d6751698e2a0a03160988a3d38581fc3b3e31de1",
         intel: "7e5ce8114ea57544be63c05103dc89d3d3c8c5bc7efdae1016f3fd66d5eaaa15"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"
  sha256 arm: "c60a8986e2b404026920900d9464de31d40fdcb135e7f48a36fe8fc7d1ce9176",
         intel: "7aea39dd8e202b69c6f22b897d35cd4d6948b5cf49f34fa3f91999ada69402fa"

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

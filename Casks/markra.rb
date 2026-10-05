cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256 arm: "195699b9a93376fad038690e478640c596d7f71d2fc19ac2f5a771fce297bb22",
         intel: "ddb326136ea604ec699adfeb26f858ff09de2d0f1e6667d841b5810f6b0269e1"

  url "https://github.com/markrahq/markra/releases/download/v#{version}/Markra_#{version}_macos_#{arch}.dmg"

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

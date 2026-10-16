cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256 arm: "5143998ca5d51fe39b81924afc370eef1bfb1c75b0159730b9fc37974486001a",
         intel: "08244423a1f93f8de53d32ed3605456002effb27e84168d99733b29d833c416d"

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

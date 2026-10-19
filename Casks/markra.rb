cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.13.1"
  sha256 arm: "995958f5caa47a06e6bb2ec6dab14f388301b17d10534a92f61ab1da959f788d",
         intel: "92a4885f9cb2fc64506d84a2f9e7dbd8cd2f0e829db44c21f7009197fe66cd48"

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

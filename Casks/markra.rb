cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm: "3809a69d1d8cad26f52f185e9861baf62863ec0eb808d45f70474f95a1b80cae",
         intel: "0f3dc18c2cc923f249383fa51e357e3ca6fe10063b07751928feabbf37413942"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm: "2662415a8a3cf9eff34c8e78dc990bd759e10a24fd4fc0a0f296e582c90780a4",
         intel: "ff5a7b5d6a8e73e744edeaddad61ca7ab86f83ca7b6ec6181a15fe3f00a026a9"

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

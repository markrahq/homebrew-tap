cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.11.1"
  sha256 arm: "ce34c170f13444c39794f1d9fb7b82597e34bfeb138602a2c8d4aa3d28333176",
         intel: "04b9c8ab1062e486aed29c38855f3aca9f4eca169a1738142659ac33473770fa"

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

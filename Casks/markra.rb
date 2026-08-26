cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0"
  sha256 arm: "8cd654e318376bbfdbb3b5f8fefb61e1819358d4a18aae38db7cf1b6abcf0fc1",
         intel: "2dca9eac9012b6a0b183552e64ebcebdbded59eb7a4137ff9f7566e2e74763bf"

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

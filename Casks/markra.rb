cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm: "bc83cf36833ad6b58d711209d7ca305cd59639d22524d6e887c882d773f59e3d",
         intel: "5d38a842dd2202959f22bb4107a500d7afc7ad457831a4d081bddb6e320bfe66"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.3.2"
  sha256 arm: "a2bc5f96a5a0793f0489063bcc657aff31286190cf651001e307fb0d1727df1e",
         intel: "93d6c66be119d77c12f64b2368d2fc84a5793fa6ab5f1d911117a8344579bc1d"

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

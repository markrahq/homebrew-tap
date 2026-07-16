cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm: "914bc3c1953cbccb741130f631d037482e4d0b4250d63fabc04c8a8157caa4f1",
         intel: "9b9861e3ab3542926bf700c1ccf8f54cf18272e1fdd6b1fecef0b434eecfa052"

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

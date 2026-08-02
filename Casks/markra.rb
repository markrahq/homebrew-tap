cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm: "52bf5b820b791d527d522e9ffa537b9f4c1cce480dbbc953df27265766c5fa01",
         intel: "6c6a188e50f8e6d050058fa498008fbcec6fdee7324652b52236e19fade01a9d"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.10.1"
  sha256 arm: "9c6c2d459c18358b8c8f1fef7083140f4811584ebf301273648953bf86f2bbef",
         intel: "de134e4e63ea7361b53698455b5997784bf4cfcab763b51a373ff5974d8984e0"

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

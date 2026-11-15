cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.7"
  sha256 arm: "3d0051b40360f6ff99cf511236049a3e1d4f3e2ad7b2d721ccf6769d15cbfa54",
         intel: "6fa2d2ffa28f3922b1846460e4e8d68d13f302d2e09f001d7b69e7fe73cc6ee5"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.10.3"
  sha256 arm: "db7d20f69a4796d67be57f7599a2d251e16bd4d4eef5226643d1504c67af041d",
         intel: "53283ed74c32dab84363d2be89be7bed9b02ffa3e1f2b0fea32b955798a6b211"

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

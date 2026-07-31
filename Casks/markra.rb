cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm: "fdbfab6fa1a469b147d37b5d49c6973c81f67fc471a6679f6973225e528bb00f",
         intel: "c93c354becf3b2cc45c4041a635cc11e398c081d24b355c89ddae2910c8dcd01"

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

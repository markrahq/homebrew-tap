cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm: "46210aac094eb3b3350c4affa05a1b0da09fdbfc5e7109e304b08db05c377ba8",
         intel: "ba631481ddddb00ac4e85cb2b04c97eab9a87dc62098d5276b39be76eb75ab14"

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

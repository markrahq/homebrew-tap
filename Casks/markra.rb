cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.5"
  sha256 arm: "5e7defda6f6d7fce8807fc4298ce2fa83662a0e919a8b9f8f2b57ae7ca814d74",
         intel: "72af69970456a6168b57c2b1b4596fe77293918a02fd58aa0dfd0f46069b1946"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm: "0eb5441a4b238bb4afe12bfc3b3d1eac5604507276205faa3526e7c8df8e5f29",
         intel: "85ba27a0a432e10e69a4540f50700c5a47916e191f53ef57c59f111fc0019ecd"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm: "2f80f3304a0284e19254a088ed63c9f8e317b4e57707f8cf20e5bac77f25964d",
         intel: "06baad2ab26071d62d9a6d6fdc2fd07126e7731c8933c1a9db427a555b243af8"

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

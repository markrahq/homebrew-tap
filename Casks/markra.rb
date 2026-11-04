cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.4"
  sha256 arm: "99441db9dcdc27d6f69acead8d56afd38ac6440eb3a1fecf8180c44f8a1d6c37",
         intel: "5b6957d2c6f46f68aaa0cd6ce8045b7d26573e4a0f1f895427d3bf50b699491b"

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

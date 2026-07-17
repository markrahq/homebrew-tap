cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.7.3"
  sha256 arm: "b48cf3a02145cfdffb3fc9d87a2d8b246bf2fb7c243ffb1b819e976d37ba0b10",
         intel: "df8ac1937fa4f97cef933c0428e671603c7105ee1d1de2531c9976e1c2925309"

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

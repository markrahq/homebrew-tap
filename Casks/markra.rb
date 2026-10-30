cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.3"
  sha256 arm: "e315cd67d60654b143d25194255abffd462f7107c87b91847649202c85a45073",
         intel: "586d5a67090b526e6e60f999d46a9f2a1d6939e034eb2da4517d5cd98ea65ab5"

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

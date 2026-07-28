cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm: "cf077cf78089951281c6014745fde78751f4d929a1f1eb64f49c03364b9e1391",
         intel: "9aa96f4f48de843194c4773c2f397f91a022f264be2344b679a349bb080769b5"

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

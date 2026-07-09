cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm: "72cb2dd69717f4a73530de3b11750f35c8cea0f0278b616e85b0106a5f651e78",
         intel: "25de63f9ce6846d8e4fd7477790504e5091ced7241a8b924de78cbaab56b1543"

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

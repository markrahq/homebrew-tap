cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm: "4d00f6ef27ebc0a118c6d7e5f72b38e3afe34e752e829cacd09681511294ea24",
         intel: "6dba1e98d5722b796ebf0fd87545e297cf38475c564b6c90bf683f8361fc94fb"

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

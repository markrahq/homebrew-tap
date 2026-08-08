cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.6"
  sha256 arm: "909feb7d7530499b2027120fcaafd3a3b160df730efb69d2efb8d006c0c00593",
         intel: "48a7f6d17cf7edad39e0eb05e0809fced428adba413bf68fd97fde3cf960e9b1"

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

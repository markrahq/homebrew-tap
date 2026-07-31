cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.3.3"
  sha256 arm: "927cccfb0c24896698102f1f142e0aaf8058e71be3e319ecfd1e648fad064b37",
         intel: "8ea2478dc22466ce416e985a26ddd90cdebfb6a7a4f54172dc4a9b073577adad"

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

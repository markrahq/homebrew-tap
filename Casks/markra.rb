cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm: "901852dbcfd770a807f2d19b578d921618e8f6e4466a0ce79b3dfef827bdc062",
         intel: "a5953351986fda091bec0c18f04e94128028b484eb024feae0088f0c2ce9ee56"

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

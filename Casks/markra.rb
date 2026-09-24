cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm: "614d25eb97dfe7d267819c75600319116c709b43ea723d03174b6eb277d3767b",
         intel: "708d5d7467627a07266261492c495473b38009e16e5d619c7f0f04b3736c25b5"

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

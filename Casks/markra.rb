cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm: "96f52c185c793d46e63af72574412ba6a767ff0e1c12464ed41b91a629cba9e8",
         intel: "aea3990f9828393a3f943198bbd4ba0ba14cbd090a9b0f28e5c25cd571315f33"

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

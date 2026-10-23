cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.0"
  sha256 arm: "7fecd1779c6d904203ffa1b11c987876ddd6e42779094cfa85bdcaf1651e8813",
         intel: "0052f5b39b4c005f4e51daa8d42e8d0cf023272664f285119d5b9073d734aa2f"

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

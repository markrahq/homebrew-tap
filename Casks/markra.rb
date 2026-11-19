cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.8"
  sha256 arm: "6e0d1f25c59a4ddaf058a7c017cb162a5f04c8a642ad49e05d169e2b882cdeda",
         intel: "7565734ff814244426d80f6ae2101bf37c661c720341437db0c04c9c33e316e1"

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

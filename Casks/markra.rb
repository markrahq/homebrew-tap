cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.2"
  sha256 arm: "2df29f5adb71aad488680c831ae9df57bec10560a856473acf9c585a130cd9ca",
         intel: "f76aa7d035cc6434876702d8bb8c2a0564f168c0fd39d5d670969d25618de82e"

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

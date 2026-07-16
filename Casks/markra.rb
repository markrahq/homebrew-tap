cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm: "9af357f2ed774aaa56b48bba4bc32668429782e1b2e151d9da971138ea4787c1",
         intel: "bfb5179e2aea226c6904ee7ccd3b94b6d07ae55e826d2eb5346fb6ca06c80d80"

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

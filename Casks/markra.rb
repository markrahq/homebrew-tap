cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.1"
  sha256 arm: "cf99bfe7f8b1df8530edfb3f5c0767a2bb3d2f35e4d05321540e381a493042a6",
         intel: "e01454fa5c61a6778b99731d3f0d0a9dbb394ca875028de2fb7fa67d69cfcfa4"

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

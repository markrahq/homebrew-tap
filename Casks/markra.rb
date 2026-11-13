cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.14.6"
  sha256 arm: "b78af6e1d612004572352ed3f9ed85e4f06ec626de8d643453181eaa380d8c5b",
         intel: "8b596a950508dcbbc8a639677f5d4093af8f3b408a735100ea786cb0e8045156"

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

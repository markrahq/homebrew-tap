cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm: "209994da217569defb4253ca728c12b5f0915d665d9634d25d80db1a064cd5fd",
         intel: "c11bee7844aa087f83736e48945a33a93bd0ae2b7e662ce73db5c6edb8b3fd94"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm: "e1b16fae2883ee2d384644b494d0778627f89a27c6670a1d2a5cb03354222f37",
         intel: "319e9164e1c894622d5f3a5d149cd4a08b23cd7559423d196321e951d5cdab79"

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

cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm: "7087fc7f74240fbafa25549ad65c2085eab1d15e6f979182edae5fd381fdb366",
         intel: "d81b087bba05464b400066ae6408020389252a1681ab4015dd7ed76c22d09ab3"

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

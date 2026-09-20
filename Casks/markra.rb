cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.11.2"
  sha256 arm: "719777d973bf6981de93823b8473600209419b8c40243c040aeb998557094642",
         intel: "fa41011c971ba5124a8321cde07c038247bbff929cb7dfcba3c23a8ccf7216f4"

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

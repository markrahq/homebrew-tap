cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.10.2"
  sha256 arm: "9830a3e74532be2e70890cd6b611113504604558f9042e9e0ede6131ca372b66",
         intel: "e11ded7e2f494f40e8449236fa78da4e7c3f64e377869fe8d4aa999c5b771ef4"

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

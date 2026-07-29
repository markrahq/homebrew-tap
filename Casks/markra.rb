cask "markra" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm: "0fec52657ec3dd438eeb7faabf78db37810cf60fbbc316e2511eb02d2b5af1b9",
         intel: "f8f2ca7f812e611480055a39aa07f10c3b7fbf50165f84dba947ce490e93ad68"

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

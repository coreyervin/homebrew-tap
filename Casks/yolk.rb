cask "yolk" do
  version "1.1.1"
  sha256 "1dd4b08374753be5065f019de9cbb2adb8cdfebd86278eeb3574d0a08c82eda1"

  url "https://github.com/coreyervin/yolk/releases/download/v#{version}/Yolk-#{version}.dmg"
  name "Yolk"
  desc "Keep the machine awake and Slack active while AI agents run"
  homepage "https://github.com/coreyervin/yolk"

  depends_on macos: :sonoma

  app "Yolk.app"
  # The app embeds the CLI; link it onto PATH rather than shipping it twice.
  binary "#{appdir}/Yolk.app/Contents/Resources/yolk"

  zap trash: "~/Library/Preferences/io.github.coreyervin.yolk.plist"
end

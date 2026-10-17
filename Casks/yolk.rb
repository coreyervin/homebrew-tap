cask "yolk" do
  version "1.1.0"
  sha256 "44d302d9d5631c3efc8581a7386600468ed8b35a904cca53f51a69f09a4e3f9b"

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

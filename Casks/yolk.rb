cask "yolk" do
  version "1.0.1"
  sha256 "19f3c9d6083dbcdcafa4cc753fab57dcc5d3d56d1c196334f9f5421ce973572c"

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

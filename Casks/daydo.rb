cask "daydo" do
  version "0.1.0.466"
  sha256 "dc52045929074791b1898b5ede8e6195c66441fe9c3a366bcd5a8ab5502b79ff"

  url "https://github.com/audichuang/daydo/releases/download/mac-v#{version}/DayDo-#{version}.zip"
  name "DayDo"
  desc "To-do list and calendar"
  homepage "https://github.com/audichuang/daydo"

  depends_on macos: :tahoe

  app "DayDo.app"

  zap trash: [
    "~/Library/Group Containers/group.com.audichuang.daydo",
    "~/Library/Containers/com.audichuang.daydo.widgets",
  ]
end

cask "daydo" do
  version "0.1.0.473"
  sha256 "e76f42cc264bdf842bda1b2745c28c04bc402cac63f63924b7bda229b7ba6467"

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

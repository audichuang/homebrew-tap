cask "daydo" do
  version "0.1.0.462"
  sha256 "1d1905443dac802db473b1b28fedb9542b6275a072a3af8be8f6e7c90c2c23c3"

  url "https://github.com/audichuang/daydo/releases/download/mac-v#{version}/DayDo-#{version}.zip"
  name "DayDo"
  desc "To-do list and calendar"
  homepage "https://github.com/audichuang/daydo"

  depends_on macos: ">= :tahoe"

  app "DayDo.app"

  zap trash: [
    "~/Library/Group Containers/group.com.audichuang.daydo",
    "~/Library/Containers/com.audichuang.daydo.widgets",
  ]
end

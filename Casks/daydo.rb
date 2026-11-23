cask "daydo" do
  version "0.1.0.454"
  sha256 "a225bc7f0dbcf0fd9cf5db7dd92cd7c3b0a66d0e98a91e32311ca896f2e9f790"

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

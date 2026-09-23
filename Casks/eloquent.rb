cask "eloquent" do
  version "0.1.5"
  sha256 "d663dbe7ade0b12764cb50d2062c0c6278eee84b5c5544833ba178358df2e3a8"

  url "https://github.com/kipyin/eloquent/releases/download/v#{version}/Eloquent-v#{version}.zip"
  name "Eloquent"
  desc "Menu bar text-to-speech"
  homepage "https://github.com/kipyin/eloquent"

  # Track the latest GitHub Release. The app's short version string is not the release version.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Eloquent.app"

  zap trash: "~/Library/Preferences/com.kipyin.eloquent.plist"
end

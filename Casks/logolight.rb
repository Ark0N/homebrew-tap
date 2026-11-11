cask "logolight" do
  version "1.3.1"
  sha256 "9e7660c8aac1b71af406ba2b20fa7dc8abf92882bbb1dba07d52666f68f0c96c"

  url "https://github.com/Ark0N/LogoLight/releases/download/v#{version}/LogoLight-#{version}.zip",
      verified: "github.com/Ark0N/LogoLight/"
  name "LogoLight"
  desc "Control the glowing Apple logo on MacBook Pro with PROLED XDR Display"
  homepage "https://logolight.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LogoLight.app"

  uninstall quit: "app.logolight.LogoLight"

  # The sudoers rule exists only if "Disable Password" was checked in LogoLight's menu.
  zap delete: "/private/etc/sudoers.d/logolight",
      trash:  [
        "~/Library/Application Scripts/app.logolight.LogoLight.Controls",
        "~/Library/Containers/app.logolight.LogoLight.Controls",
        "~/Library/Preferences/app.logolight.LogoLight.plist",
      ]
end

cask "logolight" do
  version "1.3.0"
  sha256 "7f3e731a99a4345168a26ccf06fb8b557d1de3571470ca892b20d41feba15ca7"

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
  depends_on macos: ">= :sonoma"

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

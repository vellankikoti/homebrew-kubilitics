# Homebrew cask for Kubilitics desktop app.
#
# Source of truth: this file. The tap at
# https://github.com/vellankikoti/homebrew-kubilitics is updated from
# it via scripts/publish-homebrew-formula.sh (manual) or
# .github/workflows/post-release.yml (automatic on tag).
#
# Users install with:
#   brew tap vellankikoti/kubilitics
#   brew install --cask kubilitics

cask "kubilitics" do
  version "1.4.0"
  sha256 "91a3d1f547cb70ccd76390ba0bc757c7870fc7e9bdf944983738f16347596089"

  url "https://github.com/vellankikoti/kubilitics/releases/download/v#{version}/Kubilitics_#{version}_universal.dmg"
  name "Kubilitics"
  desc "Kubernetes operational intelligence platform with AI chat"
  homepage "https://github.com/vellankikoti/kubilitics"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Kubilitics.app"

  uninstall quit:      "com.kubilitics.desktop",
            launchctl: "com.kubilitics.desktop"

  zap trash: [
    "~/Library/Application Support/kubilitics",
    "~/Library/Caches/com.kubilitics.desktop",
    "~/Library/Logs/kubilitics",
    "~/Library/Preferences/com.kubilitics.desktop.plist",
    "~/Library/Saved Application State/com.kubilitics.desktop.savedState",
  ]
end

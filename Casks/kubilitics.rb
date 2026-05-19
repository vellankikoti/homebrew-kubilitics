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
  version "1.3.2"
  sha256 "15f919acc072cd4c9c8d083716ed4978ff41bb74a02e8f69de6e96e191acb7a6"

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

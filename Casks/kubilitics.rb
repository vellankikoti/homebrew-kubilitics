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
  version "1.2.0"
  sha256 "e54070e73d959f21eb28df03bf78562a7ec0bdef4ac2751d7dd2b454cbf84846"

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

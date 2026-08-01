cask "waindow" do
  version "1.6.0"
  sha256 "70499f2c773a0dd11d6f31d4f68ca03afd83af805e63d3cbb8d4ff567fe7b399"

  url "https://github.com/indiveloper/waindow-releases/releases/download/v#{version}/Waindow-#{version}.zip",
      verified: "github.com/indiveloper/waindow-releases/"
  name "Waindow"
  desc "Find and arrange windows with local memos, capture, and focus tools"
  homepage "https://www.waindow.app/"

  depends_on macos: :ventura

  app "Waindow.app"

  caveats <<~EOS
    Waindow requires macOS 13.1 or later.

    The current direct build uses a stable local signing identity and is not
    Developer ID notarized.
    Homebrew preserves macOS quarantine. On first launch, macOS may require:
    System Settings > Privacy & Security > Open Anyway.

    Do not disable Gatekeeper. Waindow requests Accessibility or Screen
    Recording only when a feature that needs that permission is used.

    For future tap releases, prefer `brew upgrade --cask indiveloper/tap/waindow`
    instead of replacing the app manually.
  EOS
end

cask "waindow" do
  version "1.4.1"
  sha256 "d64cbed7efce5bf6b2ba111d777366df3479290184a17217dcf9e4cc589600e0"

  url "https://github.com/indiveloper/waindow-releases/releases/download/v#{version}/Waindow-#{version}.zip",
      verified: "github.com/indiveloper/waindow-releases/"
  name "Waindow"
  desc "Arrange windows with memos, capture, and focus tools"
  homepage "https://www.waindow.app/"

  depends_on macos: ">= :ventura"

  app "Waindow.app"

  caveats <<~EOS
    Waindow requires macOS 13.1 or later.

    The current direct build is ad-hoc signed, not Developer ID notarized.
    Homebrew preserves macOS quarantine. On first launch, macOS may require:
    System Settings > Privacy & Security > Open Anyway.

    Do not disable Gatekeeper. Waindow requests Accessibility or Screen
    Recording only when a feature that needs that permission is used.

    For future tap releases, prefer `brew upgrade --cask indiveloper/tap/waindow`
    instead of replacing the app manually.
  EOS
end

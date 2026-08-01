cask "waindow" do
  version "1.5.0"
  sha256 "b84688fa98951bd1c117122c682b7c81f25c0a9b0e40ca2c9a993ae05002d612"

  url "https://github.com/indiveloper/waindow-releases/releases/download/v#{version}/Waindow-#{version}.zip",
      verified: "github.com/indiveloper/waindow-releases/"
  name "Waindow"
  desc "Save window workspaces with memos, capture, and focus tools"
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

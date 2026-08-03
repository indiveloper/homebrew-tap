cask "waindow" do
  version "1.10.0"
  sha256 "eed5368df3ff4e50f6d7f32200cdaf1174d9a4b97043d7de9d50d2d84600bc47"

  url "https://github.com/indiveloper/waindow-releases/releases/download/v#{version}/Waindow-#{version}.zip",
      verified: "github.com/indiveloper/waindow-releases/"
  name "Waindow"
  desc "Arrange workspaces, present, record demos, and keep local utilities together"
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
    Recording, microphone, or camera only when a feature that needs that
    permission is explicitly used.

    For future tap releases, prefer `brew upgrade --cask indiveloper/tap/waindow`
    instead of replacing the app manually.
  EOS
end

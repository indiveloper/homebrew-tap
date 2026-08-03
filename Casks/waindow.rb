cask "waindow" do
  version "1.9.1"
  sha256 "1286c265d517a21c97e567643496b09b74c383e71e518a3c0913babfa558c9fa"

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

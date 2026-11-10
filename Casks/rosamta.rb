cask "rosamta" do
  version "0.1.0-rc.1"
  sha256 "0f2aefe36c4f7be1236fb10858aaa4daa05848f24d66bbc0a06cb4e144ad4c1b"

  url "https://github.com/accidental-two-timer-sam-woof/rosamta-agent/releases/download/v#{version}/rosamta-#{version}-macos-universal.dmg"
  name "rosamta"
  desc "Cross-shell, cross-host dotfile manager"
  homepage "https://github.com/accidental-two-timer-sam-woof/rosamta-agent"

  depends_on macos: ">= :ventura"

  app "rosamta.app"
  binary "#{appdir}/rosamta.app/Contents/MacOS/rosamta"
  binary "#{appdir}/rosamta.app/Contents/MacOS/rosamta", target: "rsmt"
end

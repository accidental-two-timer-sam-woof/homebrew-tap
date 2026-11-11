cask "rosamta" do
  version "0.1.0-rc.2"
  sha256 "ce05e4dee512f5a7a87c9bbf1b1118f4ca25523e379ae7db2194ccae3a0997e4"

  url "https://github.com/accidental-two-timer-sam-woof/rosamta-agent/releases/download/v#{version}/rosamta-#{version}-macos-universal.dmg"
  name "rosamta"
  desc "Cross-shell, cross-host dotfile manager"
  homepage "https://github.com/accidental-two-timer-sam-woof/rosamta-agent"

  depends_on macos: ">= :ventura"

  app "rosamta.app"
  binary "#{appdir}/rosamta.app/Contents/MacOS/rosamta"
  binary "#{appdir}/rosamta.app/Contents/MacOS/rosamta", target: "rsmt"
end

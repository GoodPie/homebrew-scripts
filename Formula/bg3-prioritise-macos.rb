class Bg3PrioritiseMacos < Formula
  desc "Prioritise BG3 process on MacOS"
  homepage "https://github.com/GoodPie/bg3-prioritise-macos"
  url "https://github.com/GoodPie/bg3-prioritise-macos.git", branch: "main"
  version "head"
  head "https://github.com/GoodPie/bg3-prioritise-macos.git", branch: "main"

  def install
    bin.install "bg3-prioritise-macos.sh" => "bg3-prioritise-macos"

    chmod 0755, bin/"bg3-prioritise-macos"
  end
end

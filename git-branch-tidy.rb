class GitBranchTidy < Formula
  desc "A script to clean up local Git branches that have been merged and whose remote branches no longer exist"
  homepage "https://github.com/goodpie/homebrew-scripts"
  url "https://github.com/goodpie/homebrew-scripts/archive/v1.0.0.tar.gz"
  sha256 "5904075b0c2951873aa618c3b6dd40dc3c281b3c49e5e1759f093746d17efda2"
  version "1.0.0"

  def install
    bin.install "git-branch-tidy.sh" => "git-branch-tidy"
  end
end
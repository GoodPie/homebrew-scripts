class GitBranchTidy < Formula
  desc "A script to clean up local Git branches that have been merged and whose remote branches no longer exist"
  homepage "https://github.com/goodpie/git-branch-tidy"
  url "https://github.com/GoodPie/git-branch-tidy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f7d9f1dd1f380767a7fc38ea8f3e5fd3fa6a573dceacd69bb388738e4fc4ee91"
  version "1.0.2"

  def install
    bin.install "git-branch-tidy.sh" => "git-branch-tidy"
  end
end
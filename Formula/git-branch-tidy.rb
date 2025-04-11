class GitBranchTidy < Formula
  desc "A script to clean up local Git branches that have been merged and whose remote branches no longer exist"
  homepage "https://github.com/goodpie/git-branch-tidy"
  url "https://github.com/GoodPie/git-branch-tidy.git", branch: "main"
  version "head"
  head "https://github.com/GoodPie/git-branch-tidy.git", branch: "main"

  def install
    bin.install "git-branch-tidy.sh" => "git-branch-tidy"

    chmod 0755, bin/"git-branch-tidy"
  end
end

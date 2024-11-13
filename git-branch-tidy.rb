class GitBranchTidy < Formula
  desc "A script to clean up local Git branches that have been merged and whose remote branches no longer exist"
  homepage "https://github.com/goodpie/homebrew-scripts"
  url "https://github.com/goodpie/homebrew-scripts/archive/v1.0.0.tar.gz"
  sha256 "933cf62426f0d2c1ba1bcfed8f3fad8f1e2479b3b5b694319bfd962791ec2ddc"
  version "1.0.1"

  def install
    bin.install "git-branch-tidy.sh" => "git-branch-tidy"
  end
end
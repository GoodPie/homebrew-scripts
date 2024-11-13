class GitBranchTidy < Formula
  desc "A script to clean up local Git branches that have been merged and whose remote branches no longer exist"
  homepage "https://github.com/goodpie/homebrew-scripts"
  url "https://github.com/goodpie/homebrew-scripts/archive/v1.0.0.tar.gz"
  sha256 "your_tarball_sha256_checksum"
  version "1.0.0"

  def install
    bin.install "git-branch-tidy.sh" => "git-branch-tidy"
  end
end
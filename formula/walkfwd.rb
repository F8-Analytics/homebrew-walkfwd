require "formula"

class Walk < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/homebrew-walkfwd"
  url "https://github.com/F8-Analytics/homebrew-walkfwd/walkfwd-darwin-amd64.tar.gz", :using => GitHubGitDownloadStrategy"
  head "https://github.com/F8-Analytics/homebrew-walkfwd.git"

  def install
    bin.install "walkfwd"
  end

  # Homebrew requires tests.
  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/walkfwd -v", 2)
  end
end

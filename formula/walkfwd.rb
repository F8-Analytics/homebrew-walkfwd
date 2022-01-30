class Walkfwd < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/walkfwd"
  url "https://github.com/F8-Analytics/walkfwd/walkfwd-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy"
  head "https://github.com/F8-Analytics/walkfwd.git"

  def install
    bin.install "walkfwd"
  end

  # Homebrew requires tests.
  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/0.1.0 -v", 2)
  end
end

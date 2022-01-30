class Walkfwd < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/walkfwd"
  url ".../walkfwd-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "<SHA256 CHECKSUM>"
  head "https://github.com/F8-Analytics/walkfwd.git"

  def install
    bin.install "walkfwd"
  end

  # Homebrew requires tests.
  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/0.1.0 -v", 2)
  end
end

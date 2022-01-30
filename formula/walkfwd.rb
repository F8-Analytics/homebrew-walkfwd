# require "formula"

class Walk < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/homebrew-walkfwd"
  url "https://github.com/F8-Analytics/homebrew-walkfwd/walkfwd-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "dfff81379dba66c83d9706800798dca66c692c8a22499261cc8eca765b571af7"
  head "https://github.com/F8-Analytics/homebrew-walkfwd.git"

  def install
    bin.install "walkfwd"
  end

  # Homebrew requires tests.
  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/walkfwd -v", 2)
  end
end

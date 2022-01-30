class Walkfwd < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/homebrew-walkfw"
  url "https://github.com/F8-Analytics/homebrew-walkfwd/releases/download/v0.1.0/walkfwd-darwin-amd64.tar.gz"
  sha256 "2707d9f44205a1f8d00fd993dfdc706431ca3f83d0c0ace5fc1e0875556ed374"
  head "https://github.com/F8-Analytics/homebrew-walkfwd.git"
  license "MIT"


  def install
    bin.install "walkfwd"
  end

  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/walkfwd -v", 2)
  end
end


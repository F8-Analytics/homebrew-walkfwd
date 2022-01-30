class Walkfwd < Formula
  desc "walkfwd CSV File Normalization Tool v0.1.0"
  homepage "https://github.com/F8-Analytics/homebrew-walkfw"
  url "https://github.com/F8-Analytics/homebrew-walkfwd/releases/download/v0.1.0/walkfwd-darwin-amd64.tar.gz"
  sha256 "dfff81379dba66c83d9706800798dca66c692c8a22499261cc8eca765b571af7"
  head "https://github.com/F8-Analytics/homebrew-walkfwd.git"
  license "MIT"


  def install
    bin.install "walkfwd"
  end

  test do
    assert_match "walkfwd version 0.1.0", shell_output("#{bin}/walkfwd -v", 2)
  end
end


# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HomebrewWalkfwd < Formula
  desc ""
  homepage ""
  url "https://github.com/F8-Analytics/homebrew-walkfwd/releases/download/v0.1.0/walkfwd-darwin-amd$
  sha256 "dfff81379dba66c83d9706800798dca66c692c8a22499261cc8eca765b571af7"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

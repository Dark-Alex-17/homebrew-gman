# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.2/gman-aarch64-apple-darwin.tar.gz"
    sha256 "04b81a257cc8a882e6ae1ce7cc253ac4179fa8eaa221d2a1009b78676741d221"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.2/gman-x86_64-apple-darwin.tar.gz"
    sha256 "7a7db03839a560dc40eff23f7e6cc6dd8bd9d4e45b33c52da380e7c95b63e860"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.2/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b7165a7e552cbeb37b882f741426347fe511f6785ed08f76913bb85f7cd598bc"
  end
  version "0.2.2"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

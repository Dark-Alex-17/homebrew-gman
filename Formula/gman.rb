# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.3.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "067ec05e5478c3a22d7b975073c17e658cc602697a1561f6558f0c18e5de5787"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.3.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "00f35db1bfb030441f0f7d5150c967f327142a44c015053110834fc627fe7878"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.3.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d6de6b4dce6834f78f1d3d480461967a61bedfe33b8670ea2fc5898a23b11719"
  end
  version "0.3.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

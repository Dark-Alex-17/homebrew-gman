# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "451feec65e947866d4fba63be397c600bc208f2a412d3c9a2108b65142413045"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "b0be4ebdca5331fa4d95e38974385061176c8d70bee771ae4ab5efd37384930f"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0a40f47eb9101a028bd7c03c05f31c1a8ee5046cbe2edb641df70a2e28a26e30"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

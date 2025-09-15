# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "63c8b5783bb651f1e2e2431ac208ce8efe59272325ea69ff206b8797a79623e2"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "750ec10b050f98505b04b86cbe76ca6fc928d6326d14c0ffa0c3ed11ddb8267a"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "274214afb284b9c60e85459321f4c2ee314d1f60241f278305e3b20be9e6f629"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

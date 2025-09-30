# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "a010693fc818f65403c6f915bb11040b64345826db2a2387e7725dc526e13c85"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "a355adf23e2422e5f7595aabef40e37fc54d488dc1bfe0f6edccf0ef6c869779"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9532e8c0f82946a1207f61f0a0f808ac481b9470ec7fe89d97441ebdaa45b521"
  end
  version "0.2.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

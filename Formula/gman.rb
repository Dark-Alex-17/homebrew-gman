# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.3/gman-aarch64-apple-darwin.tar.gz"
    sha256 "3b077c15f6b84ec67509fa8dd99f11a0e4edafc59dfc8fbeb8df7ba59ab2da48"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.3/gman-x86_64-apple-darwin.tar.gz"
    sha256 "facbc16b40a29b653fa8ef526836880cffa618355fd130d343f9cea434f1a0c1"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.3/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a68366a07740f851b7e42240c820c41edcc3a2a6d038e81cb6b6bb4b61974b46"
  end
  version "0.2.3"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

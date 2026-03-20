# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.1/gman-aarch64-apple-darwin.tar.gz"
    sha256 "0b2f1340f649fefa3215c1e260631cceeea62cf7a09c6a79a924cccae0140aab"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.1/gman-x86_64-apple-darwin.tar.gz"
    sha256 "a09efd705cdf712d6446f9a0e411a29dfc9975c1f46c9bf486646b75746a31a6"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.1/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "162d94bf6d23066862ebd0d3d5bfefa41b54a005356ae04196222b4211234ce6"
  end
  version "0.4.1"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

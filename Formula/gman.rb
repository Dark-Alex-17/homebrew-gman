# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.1/gman-aarch64-apple-darwin.tar.gz"
    sha256 "a789039328bd69d23e7b93fe62f82739044339d0d615b45e3a46755f27b6b51f"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.1/gman-x86_64-apple-darwin.tar.gz"
    sha256 "d82d8b582486355a8f8333a5673214f6e4cee8e35d9ae2ea378850f92bc8a502"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.1/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b134206d15c5b82cd726797e58280935d3058e1e6e609952adc205bce882c985"
  end
  version "0.2.1"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "c7306d5df17f1503b601618e47f8f524752b601580217dd8aeef1954c80aaad9"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "2df6a472252551d9a29087e5b982cd7604924d1d8b81f552333c738eb43645be"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "33863dbbd4f5f3c5e2257224ed7603339b5c134b97d0d87f0b5dbcf970532d22"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

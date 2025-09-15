# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "1068e810359c3b4abea5bbfb8f93e805286f6baa4fcf0466bf8ea0f65304f613"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "a4bd13942427243b8da658105f45d271d66526affb77129c4aa1d7fe02d7dc79"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.2.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "26faf5851cbf72f52d94375f8bd7e54adb59d0622c6d498be94c409ff6735fed"
  end
  version "0.2.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

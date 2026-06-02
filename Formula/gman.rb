# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.5.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "fed9e170d4aa05b48ba65c792755acd4e0f035e345d9a737d423157213d9e390"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.5.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "a5790561585d87f22a9e8fd8d33f1ac69e1b8026631517c7a257d742767a1d51"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.5.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fef3c4d9e41aa792c3bb162dd7f1f5df1af54887e81b796ee3a5694ebbf74ca3"
  end
  version "0.5.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "8f51cb35d2256f5c8d496ea286c5837aa8292427628b16322c13974df1bbf272"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "56dc236e2df17d45616f79e80fafa1c608bc869f264a77c04f4e20e71e557f4a"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.4.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "6332eac2572d09ae9ec380bec1cf21ff80a89b35f4b998b7091866a22821bf57"
  end
  version "0.4.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

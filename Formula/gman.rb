# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Gman < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "75ba20b1554a337de9048e114c46b227cf2a64763287574473c4eb02bf96545c"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "8d0a571561bea7945b2b352a10505e383c560c631c0f6dc80c48ec130e9fcdb0"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "d5d8c96ed11fc5b8c506125f3ccd596c4e9bb2f4c1c366b6b1ca9fd08ad38612"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

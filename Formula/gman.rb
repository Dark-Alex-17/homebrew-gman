# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GMan < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-aarch64-apple-darwin.tar.gz"
    sha256 "04e5a5349a1577d95a297cd9975ec91423d01d16a68fccddc93371fe7e9ccf6b"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-apple-darwin.tar.gz"
    sha256 "f94c2f7c665d2f1098c90535ebb49c574e12e0da5c56c248b9da1e640b857e97"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2e5e9235b9108fc2c5ad8742a7f9c02235efb1b358e3c290d8a8ef708632b5cd"
  end
  version "0.1.0"
  license "MIT"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

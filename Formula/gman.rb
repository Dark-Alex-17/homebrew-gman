# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class GMan < Formula
  desc "Universal command line credential management and injection tool"
  homepage "https://github.com/Dark-Alex-17/gman"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-macos-arm64.tar.gz"
    sha256 "000810bd48016eac9a000e8ddeaa58fba8932cdfb6b211e63b8678e35338cce1"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-macos.tar.gz"
    sha256 "5611a2a8caaff313e20f9e51eaf39d6e48a6f3ed57f9b08cb78e32cea4a8e615"
  else
    url "https://github.com/Dark-Alex-17/gman/releases/download/v0.1.0/gman-linux-musl.tar.gz"
    sha256 "a20e618a8b25bc4bd8b749f446c09001f8c28a00e072703a0bb6b469cdae1f43"
  end
  version "0.1.0"
  license "BSD-3-Clause"

  def install
    bin.install "gman"
    ohai "You're done! Get started with \"gman --help\""
  end
end

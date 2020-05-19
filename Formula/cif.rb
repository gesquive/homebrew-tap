# This file was generated by GoReleaser. DO NOT EDIT.
class Cif < Formula
  desc "Generate certificate summary information for PEM certificates and output (in mkcert.org format)"
  homepage "https://github.com/gesquive/cif"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/gesquive/cif/releases/download/v1.1.0/cif_v1.1.0_darwin_x86_64.tar.gz"
    sha256 "b2e38ebf7559ff1db8b4f27702e98aa2e144bcd1bc1a5487b6fb57dc09e6f700"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/gesquive/cif/releases/download/v1.1.0/cif_v1.1.0_linux_x86_64.tar.gz"
      sha256 "962a7e6bfe012d24faed1443aca219b7c8b943d760de5b3dfb24fa05f6520000"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gesquive/cif/releases/download/v1.1.0/cif_v1.1.0_linux_arm64.tar.gz"
        sha256 "52dfaedb7b54fa6bb986e82dac7c110f635421b78980d093b1580a4c7c711cc1"
      else
        url "https://github.com/gesquive/cif/releases/download/v1.1.0/cif_v1.1.0_linux_armv6.tar.gz"
        sha256 "ef8946a501a36feef4893c2898e9a1eb8e8a989fd57f546fde84cf79c5dc24ba"
      end
    end
  end

  def install
    bin.install "cif"
  end
end
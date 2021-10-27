# This file was generated by GoReleaser. DO NOT EDIT.
class Gop < Formula
  desc "Package your multi-os/arch executables"
  homepage "https://github.com/gesquive/gop"
  version "0.2.5"

  if OS.mac?
    url "https://github.com/gesquive/gop/releases/download/v0.2.5/gop_v0.2.5_darwin_x86_64.tar.gz"
    sha256 "eefbee4f6d01f18581047b9dc20529f034599a100586d11e378f954eda0d41af"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/gesquive/gop/releases/download/v0.2.5/gop_v0.2.5_linux_x86_64.tar.gz"
      sha256 "1ea72e32593dc29e9a7c328604cf1279d1db01bf2be0ad515c3068ae3a351b54"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gesquive/gop/releases/download/v0.2.5/gop_v0.2.5_linux_arm64.tar.gz"
        sha256 "a6c8c2812db1cf9d0beba25b24c0fd3500c1bf0b4a1360ad48b86a16c4d02a10"
      else
        url "https://github.com/gesquive/gop/releases/download/v0.2.5/gop_v0.2.5_linux_armv6.tar.gz"
        sha256 "9fd72e296f22f6c7f4b2d3ace7210b24adfb0092ca0b4e3845274a295ab94890"
      end
    end
  end

  def install
    bin.install "gop"
  end
end

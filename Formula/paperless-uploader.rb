# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PaperlessUploader < Formula
  desc "Watches a directory for files and uploads them to paperless-ng"
  homepage "https://github.com/gesquive/paperless-uploader"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gesquive/paperless-uploader/releases/download/v0.1.0/paperless-uploader_v0.1.0_darwin_arm64.tar.gz"
      sha256 "4d0110766f96ad10aadbb70abfffdfe1c60713fc92bcb7929600c41606577abf"

      def install
        bin.install "paperless-uploader"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gesquive/paperless-uploader/releases/download/v0.1.0/paperless-uploader_v0.1.0_darwin_x86_64.tar.gz"
      sha256 "0872458549897858f33aeccd42a615173748346d3ce2c4f450e4c1b65fea2fe8"

      def install
        bin.install "paperless-uploader"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gesquive/paperless-uploader/releases/download/v0.1.0/paperless-uploader_v0.1.0_linux_armv6.tar.gz"
      sha256 "230a5210a275da4d4350b6a8ae57284f622b4fecee2635da15a8d4fbc1ab36d8"

      def install
        bin.install "paperless-uploader"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gesquive/paperless-uploader/releases/download/v0.1.0/paperless-uploader_v0.1.0_linux_arm64.tar.gz"
      sha256 "f5b989ae4dd42b9102b9c2dfae0cf4dbcb281654cdfb124ed03a5c68a9fc3b03"

      def install
        bin.install "paperless-uploader"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gesquive/paperless-uploader/releases/download/v0.1.0/paperless-uploader_v0.1.0_linux_x86_64.tar.gz"
      sha256 "a59665789ee534a788d076e85488306ac3cd154bc3f9d7f99eabc397dd949952"

      def install
        bin.install "paperless-uploader"
      end
    end
  end

  service do
    run [opt_bin/"paperless-uploader", "--config", etc/"paperless/config.yml"]
    working_dir var
    log_path var/"log/paperless-uploader.log"
    error_log_path var/"log/paperless-uploader.log"
  end

  def post_install
    (var/"paperless-watch").mkpath
    (etc/"paperless").mkpath
    if !File.exist?(etc/"paperless/config.yml")
      (etc/"paperless/config.yml").write <<~EOS
        log_file: stdout
        paperless:
          url: https://paperless.mydomain.com
          token: insert_paperless_token_here
        watch:
          path: /usr/local/var/paperless-watch
          interval: 10s
      EOS
    end

  end
end

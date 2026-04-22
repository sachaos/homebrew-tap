# typed: false
# frozen_string_literal: true

# This file is updated automatically by shuire's release CI. DO NOT EDIT by hand.
class Shuire < Formula
  desc "Vim-like TUI git diff viewer"
  homepage "https://github.com/sachaos/shuire"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sachaos/shuire/releases/download/v0.1.1/shuire-v0.1.1-macos-arm64.tar.gz"
      sha256 "a1f6de310af2bcdf9d545404210ca0c0f546b657b54c27003a8b52d7bd6012c9"

      def install
        bin.install "shuire"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/shuire/releases/download/v0.1.1/shuire-v0.1.1-macos-x86_64.tar.gz"
      sha256 "7b26098c4baa311c24e4f7fafe2df3a269f3f87a7b612b5abceb3b632394797c"

      def install
        bin.install "shuire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/shuire/releases/download/v0.1.1/shuire-v0.1.1-linux-x86_64.tar.gz"
      sha256 "f67ef2ba086f4f56cd5975084719e71235cec2004f2a8707e536a1b0186ce0f5"

      def install
        bin.install "shuire"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/shuire/releases/download/v0.1.1/shuire-v0.1.1-linux-arm64.tar.gz"
      sha256 "29d4e8dc9ff35c4b9f974cd2ce73a966690b7cadaedb11c8106834b987c7ea59"

      def install
        bin.install "shuire"
      end
    end
  end

  test do
    system "#{bin}/shuire", "--version"
  end
end

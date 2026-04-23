# typed: false
# frozen_string_literal: true

# This file is updated automatically by shuire's release CI. DO NOT EDIT by hand.
class Shuire < Formula
  desc "Vim-like TUI git diff viewer"
  homepage "https://github.com/sachaos/shuire"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sachaos/shuire/releases/download/v0.2.0/shuire-v0.2.0-macos-arm64.tar.gz"
      sha256 "62c546630f4a875e5a8ca28d396896cf4ae4eea3d288c24115999f89b9490463"

      def install
        bin.install "shuire"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/shuire/releases/download/v0.2.0/shuire-v0.2.0-macos-x86_64.tar.gz"
      sha256 "c3a163b207597376573fe810e19da209dbcb8b0aa0a1116115de5020663421e8"

      def install
        bin.install "shuire"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/shuire/releases/download/v0.2.0/shuire-v0.2.0-linux-x86_64.tar.gz"
      sha256 "73696012d55e64ec871b61bf80803d14bdeceefb752a12e58ad9f33f46163d00"

      def install
        bin.install "shuire"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/shuire/releases/download/v0.2.0/shuire-v0.2.0-linux-arm64.tar.gz"
      sha256 "6fa0a46baaca820c805eae25f4717469fd85a384c01138ef79440cd6a2608aba"

      def install
        bin.install "shuire"
      end
    end
  end

  test do
    system "#{bin}/shuire", "--version"
  end
end

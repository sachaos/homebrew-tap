# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Viddy < Formula
  desc "Modern waach command. Viddy well, gopher. Viddy well."
  homepage "https://github.com/sachaos/viddy"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sachaos/viddy/releases/download/v0.3.4/viddy_0.3.4_Darwin_arm64.tar.gz"
      sha256 "c4d9c769dde18e4e48d0589a0891fed48536404a78d74fd7f8e885071d034218"

      def install
        bin.install "viddy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/viddy/releases/download/v0.3.4/viddy_0.3.4_Darwin_x86_64.tar.gz"
      sha256 "3184936e74735529e99790ab501a2984bc3cd7ebaf335fa155ac872964666d49"

      def install
        bin.install "viddy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/viddy/releases/download/v0.3.4/viddy_0.3.4_Linux_armv6.tar.gz"
      sha256 "25b2d7be53fb68b9c174c54ece88dab23426f422cccf3a184ad936c4c9e8fdc2"

      def install
        bin.install "viddy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/viddy/releases/download/v0.3.4/viddy_0.3.4_Linux_arm64.tar.gz"
      sha256 "73fd139071c3d50d34fed47ca581bb2db31f3186aee15807e92bfb5e29d1ae06"

      def install
        bin.install "viddy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/viddy/releases/download/v0.3.4/viddy_0.3.4_Linux_x86_64.tar.gz"
      sha256 "44aa79d03eaeaaf3b447e6f223981d9f381a27e433f2bb3de6c9d40a28faec3c"

      def install
        bin.install "viddy"
      end
    end
  end

  test do
    system "#{bin}/viddy", "--version"
  end
end

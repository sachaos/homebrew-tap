# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoStarz < Formula
  desc "Show GitHub stars"
  homepage "https://github.com/sachaos/go-starz"
  version "0.0.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/go-starz/releases/download/v0.0.5/go-starz_0.0.5_darwin_amd64.tar.gz"
      sha256 "3b2830c34aa4484c518afbf24bd5025b2cf9e671a1bd21a6aa063ed76a05ba35"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sachaos/go-starz/releases/download/v0.0.5/go-starz_0.0.5_darwin_arm64.tar.gz"
      sha256 "bbcc75f114638ea3dbf3fc2fd788e9239c75cf5fb326f5cefed373742e537675"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/go-starz/releases/download/v0.0.5/go-starz_0.0.5_linux_amd64.tar.gz"
      sha256 "3f25090620ce3c5bffe4890ad312500b2b9cfe61123a3fc00ec81af3249949ca"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/go-starz/releases/download/v0.0.5/go-starz_0.0.5_linux_armv6.tar.gz"
      sha256 "cefd1ba66fdd001902f1afe242c7bee51c0f5dfde278d1d2fc2516ad3b2b97aa"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sachaos/go-starz/releases/download/v0.0.5/go-starz_0.0.5_linux_arm64.tar.gz"
      sha256 "45bac849d71bd5020247c534daec24b4ef11adb700cfbbfac2530e62595b7dfe"
    end
  end

  def install
    bin.install "go-starz"
  end

  test do
    system "#{bin}/go-starz", "--version"
  end
end

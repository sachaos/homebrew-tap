# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bd < Formula
  desc "Describe binary string"
  homepage "https://github.com/sachaos/bd"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sachaos/bd/releases/download/v0.1.0/bd_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "ca8f87fecf64579419e921574734055d611aa4d065fb73fbbb78e96d31728baf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sachaos/bd/releases/download/v0.1.0/bd_0.1.0_Linux_x86_64.tar.gz"
    sha256 "0e3f5ea39d009bae84ac199160d6a4ac0e0d6f1efea1866007d5ec42222b1e34"
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "0x45"
  end
end

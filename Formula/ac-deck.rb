# This file was generated by GoReleaser. DO NOT EDIT.
class AcDeck < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/ac-deck"
  version "0.3.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sachaos/ac-deck/releases/download/v0.3.4/ac-deck_0.3.4_Darwin_x86_64.tar.gz"
    sha256 "4a3d9c44787b7200ced75d642bbf3d9dbb6636b37d92e52f57c966fd8d2a923d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/ac-deck/releases/download/v0.3.4/ac-deck_0.3.4_Linux_x86_64.tar.gz"
      sha256 "95f5af4a57197c50010702107274e64046681e0778d69e45f1e4d25ac8faec8e"
    end
  end

  def install
    bin.install "acd"
  end

  test do
    system "#{bin}/acd", "--version"
  end
end

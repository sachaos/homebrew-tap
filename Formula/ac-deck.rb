# This file was generated by GoReleaser. DO NOT EDIT.
class AcDeck < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/ac-deck"
  version "0.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sachaos/ac-deck/releases/download/v0.3.2/ac-deck_0.3.2_Darwin_x86_64.tar.gz"
    sha256 "c275498a41b1bd90447cabf55cd26758ffc34af6e211b27dba447b9f4a354fe9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sachaos/ac-deck/releases/download/v0.3.2/ac-deck_0.3.2_Linux_x86_64.tar.gz"
      sha256 "0cb97d7ee81973ad5796e2cd0c267087ed4526a5b47c8f708aa068d9bf5901a9"
    end
  end

  def install
    bin.install "acd"
  end

  test do
    system "#{bin}/acd", "--version"
  end
end

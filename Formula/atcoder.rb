class Atcoder < Formula
  desc "Unofficial CLI for AtCoder users"
  homepage "https://github.com/sachaos/atcoder"

  url "https://github.com/sachaos/atcoder/archive/v0.2.9.tar.gz"
  sha256 "9577d1722157a75f11dc41e0bfcca317da8360f15b85167e22035492087c802c"
  version "v0.2.9"
  head "https://github.com/sachaos/atcoder.git"

  depends_on "go" => :build

  def install
    (buildpath/"src/github.com/sachaos/atcoder").install buildpath.children
    cd "src/github.com/sachaos/atcoder" do
      system "go", "build", "-o", bin/"atcoder", "-ldflags", "\"-X github.com/sachaos/atcoder/cmd.version=#{version}\""
    end
  end
end
